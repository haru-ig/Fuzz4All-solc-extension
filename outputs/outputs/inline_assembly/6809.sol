pragma solidity ^0.8.0;
contract MixedContactsExample538Mutated {
    event E1(uint8 test);
    event E2(uint8 test);
    event E3(uint8 test);
    event E4(uint8 test);
    event E5(uint8 test);
    uint8 test;
    constructor() public {
        test = 1;
        emit E1(test);
        test = 2;
        emit E2(test);
        test = 3;
        emit E3(test);
        test = 4;
        emit E4(test);
        test = 5;
        emit E5(test);
    }
    function moreOperations22() public {
            test = 2;
            test = 6;
            test = 7;
            test = 8;
            emit E1(test);
            test = 1;
            emit E2(test);
            test = 3;
            emit E3(test);
            test = 5;
            emit E4(test);
            test = 4;
            emit E5(test);
            test = 6;
            emit E4(test);
        }
}
/* Please create a mutated program that modifies the previous
