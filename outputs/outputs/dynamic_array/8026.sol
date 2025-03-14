pragma solidity ^0.8.0;
contract Test47Semant {
    uint public x = 2;
    bool isFirstCall = false;
    function() public {

        emit CallSuccess(msg.data);
    }
    event CallSuccess(bytes data);
    function setDynamicArray() public returns(uint, uint, uint, uint) {
        return 1, 2, 3, 4;
    }
}
