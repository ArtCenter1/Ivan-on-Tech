pragma solidity 0.5.12;

contract Struts{
//state variables
    string public message = "Hello World";
    uint[] public numbers = [1, 20, 45];
//Functions
    function getMessage() public view returns(string memory){
        return message;
    }
    function setMessage(string memory newMessage) public {
      message = newMessage;
    }
}
