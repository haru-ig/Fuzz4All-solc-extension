pragma solidity ^0.8.0;
contract MutateBigNeg {
    uint numberFromUser;
    function mutationalFunction() public{
        uint a = numberFromUser;
        uint8 sign = a.sign();
        uint8 newNumber = numberFromUser | ((sign ^ uint8(1)) << 72);
        uint256 number = new uint256(newNumber);
        emit updated(number);
    }
    event updated(uint256 updatedNumber);
}
