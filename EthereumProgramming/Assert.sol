pragma solidity 0.5.12;

contract Assert{
//state variables
  struct Person {
    string name;
    uint age;
    uint height;
    bool senior;
  }
  address public owner;
  constructor() public {
    owner = msg.sender;
  }
  mapping(address=> Person) private people;
  address[] private creators;
//Functions
  function createPerson(string memory name,uint age,uint height) public{
    require(age < 150, "Age needs to be below 150");
  //This creates a person
    Person memory newPerson;
    newPerson.name = name;
    newPerson.age = age;
    newPerson.height = height;
    if(age >=65){
      newPerson.senior = true;
    }
      else{
      newPerson.senior = false;
    }
    insertPerson(newPerson);
    creators.push(msg.sender);
    //check if people[msg.sender] == newPerson;
    assert(
      keccak256(
        abi.encodePacked(
          people[msg.sender].name,
          people[msg.sender].age,
          people[msg.sender].height,
          people[msg.sender].senior
        )
      )
      ==
      keccak256(
        abi.encodePacked(
          newPerson.name,
          newPerson.age,
          newPerson.height,
          newPerson.senior
        )
      )
    );
    }

  function insertPerson(Person memory newPerson) private{
    address creator = msg.sender;
    people[creator] = newPerson;
  }

  function getPerson() public view returns(string memory name,uint age,uint height,bool senior){
      address creator = msg.sender;
      return (people[creator].name,people[creator].age,people[creator].height,people[creator].senior);
  }

  function deletePerson(address creator) public {
      require(msg.sender == owner);
      delete people[creator];
      assert(people[creator].age == 0);
  }

  function getCreator(uint index) public view returns(address){
      require(msg.sender == owner, "Caller needs to be owner");
      return creators[index];
  }
}
