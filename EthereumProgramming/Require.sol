pragma solidity 0.5.12;

contract Require{
//state variables
  struct Person {
    string name;
    uint age;
    uint height
    bool senior;
  }
  mapping(address=> Person) private people;
//Functions
  function createPerson(string memory name,uint age,uint height) public{
  address creator = msg.sender;
  //This creates a person
  Person memory newPerson;
  newPerson.name = name;
  newPerson.age = age;
  newPerson.height = height;
  if(age >= 65){
          newPerson.senior = true;
      }
      else{
          newPerson.senior = false;
      }

       insertPerson(newPerson);
       creators.push(msg.sender);
   }
  people[creator] = newPerson;
  }
  function getPerson() public view returns(string memory name,uint age,uint height){
      address creator = msg.sender;
      return (people[creator].name,people[creator].age,people[creator].height);
  }
}
