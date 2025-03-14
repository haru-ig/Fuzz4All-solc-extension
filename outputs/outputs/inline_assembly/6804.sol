pragma solidity ^0.8.0;
contract MixedContactsExample531Mutated {
    event E10(uint test);
    event E11(uint test);
    event E12(uint test);
    event E13(uint test);
    uint test;
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
        emit E6(test);
    }
    function moreOperations17() public {
            test = 5;
            emit E6(test);
            test = 4;
            emit E7(test);
            test = 3;
            emit E8(test);
            test = 2;
            emit E9(test);
            test = 1;
            emit E6(test);
        }
}
contract MixedContactsExample534Mutated {
    event E14(uint test);
    event E15(uint test);
    event E16(uint test);
    event E17(uint test);
    uint
