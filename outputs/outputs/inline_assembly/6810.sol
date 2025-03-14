pragma solidity ^0.8.0;
contract MixedContactsExample530Mutated {
    event E10(uint8 num);
    event E11(uint8 num);
    event E12(uint8 num);
    event E13(uint8 num);
    uint8 test;
    constructor() public {
        test = 1;
        emit E10(test);
        test = 2;
        emit E11(test);
        test = 3;
        emit E12(test);
        test = 4;
        emit E13(test);
        test = 5;
        emit E12(test);
    }
    function moreOperations20() public {
            test = 3;
            emit E12(test);
            test = 4;
            emit E13(test);
            test = 5;
            emit E12(test);
        }
    function moreOperations21() public {
            test = 5;
            emit E12(test);
            test = 4;
            emit E13(test);
            test = 3;
            emit E12(test);
            test = 2;
            emit E11(test);
            test =
