pragma solidity ^0.8.0;
contract MixedContactsExample531Mutated {
    event E10(uint test);
    event E11(uint test);
    event E12(uint test);
    uint test;
    constructor() public {
        test = 1;
        emit E10(test);
        test = 2;
        emit E11(test);
        test = 3;
        emit E12(test);
        test = 4;
        emit E11(test);
        test = 5;
        emit E10(test);
    }
    function moreOperations23() public {
            test = 3;
            emit E12(test);
            test = 2;
            emit E11(test);
            test = 3;
            emit E10(test);
            test = 4;
            emit E11(test);
            test = 5;
            emit E12(test);
            test = 1;
            emit E12(test);
        }
}
contract MixedContactsExample535Mutated {
    event E13(uint test);
    event E14(uint test);
    uint test;
    constructor() public {
