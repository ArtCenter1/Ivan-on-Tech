pragma solidity 0.5.12;
<<<<<<< HEAD

contract Mapping{
//state variables
  String public Message = "Hello World";
//Functions
=======
contract HelloWorld{
  //state variables
  String public Message = "Hello World";
  //Functions
>>>>>>> f0d2b18645858d78f58d5ac61bbad45e60157842
  function setMessage(string memory newMessage) public {
    Message = newMessage;
  }
}
