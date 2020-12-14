
pragma solidity 0.5.12;

contract Helloworld {
 string message = "Hello World!";

//<<<<<<< HEAD
  // function getMessage() public view returns (string memory) {
  //   return message;
  // }
  // function setMessage(string memory newMessage) public payable {
  //   message = newMessage;
  // }
// =======
 function getMessage() public view returns (string memory) {
   return message;
 }
 function setMessage(string memory newMessage) public payable {
  require(msg.value >= 1 ether);
  message = newMessage;
 }
// >>>>>>> 0854fd89f704021d85b0bdf432c01fa55a7aad06
}
