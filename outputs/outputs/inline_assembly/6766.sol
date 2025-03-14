pragma solidity ^0.8.0;
contract MixedContactsExample508 {
    event ELog(uint16 num);
    uint16 _num;
    function anotherOperation6() external {
        uint32 test;
        emit ELog(_num);
        test = 0;
        test = 2;
    }
}
