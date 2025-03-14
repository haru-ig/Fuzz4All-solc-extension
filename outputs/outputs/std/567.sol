pragma solidity ^0.8.0;
contract HelloWorld {
    function hey() public pure {
       require(msg.data.length < 100, "the message length exceeded its limit");
       for (uint i =1; i <=3; i++ ) {
        string memory h = "Hello";
    }
}
