pragma solidity 0.5.12;

contract TypesArrays{
//state variables
    string public message = "Types and Arrays";
    uint[] public numbers = [1, 20, 45];
//Functions
    function getMessage() public view returns(string memory){
        return message;
    }
    function setMessage(string memory newMessage) public {
      message = newMessage;
    }
    function getNumber(uint index) public view returns(uint){
      return numbers[index];
    }
    function setNumber(uint index,uint newNumber) public{
      numbers[index] = newNumber;
    }
}
