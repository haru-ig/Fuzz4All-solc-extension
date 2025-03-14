pragma solidity ^0.8.0;
contract Mutate {
    bytes20 public constant ADDRESS = bytes20("0x9F655a56aF27621b2d5245C0E4a614f9bA3C1888");
    constructor() payable{
        initialBalance = msg.value;
        initialBalance = initialBalance + 10;
        initialBalance = initialBalance - 0.009;
        initialBalance = initialBalance + 100;
        initialBalance = initialBalance + 10;
        initialBalance = initialBalance - 0.005;
        initialBalance = initialBalance + 10;
        initialBalance = initialBalance - 0.005;
        initialBalance = initialBalance + 100000;







    }
}
