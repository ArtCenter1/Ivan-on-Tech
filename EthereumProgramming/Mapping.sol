pragma solidity 0.5.12;
contract HelloWorld{
  //state variables
  String public Message = "Hello World";
  //Functions
  function setMessage(string memory newMessage) public {
    Message = newMessage;
  }
}
