pragma solidity 0.5.12;

contract Struts{
//state variables
    struct Person {
      uint id;
      string name;
      uint age;
      uint height;
    }
    Person[] public people;
//Functions
    function createPerson(string memory name,uint age,uint height) public{
    //people.push( Person(people.length, name, age, height));
      Person memory newPerson;
      newPerson.id = people.length;
      newPerson.name = name;
      newPerson.age = age;
      newPerson.height = height;
      people.push(newPerson);
}
