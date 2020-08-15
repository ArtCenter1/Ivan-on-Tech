pragma solidity 0.5.12;

contract HelloWorld{
//state variables
    string public message = "Hello World";
//Functions
    function getMessage() public view returns(string memory){
        return message;
    }
    function setMessage(string memory newMessage) public {
      message = newMessage;
    }
}
