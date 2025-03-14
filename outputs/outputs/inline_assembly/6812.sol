pragma solidity ^0.8.0;
contract MixedContactsExample7346Mutated {
    event E10(uint8 num);
    uint8 num;
    constructor() public {
        num = 1;
        emit E10(num);
        num = 2;
        emit E10(num);
        num = 3;
        emit E10(num);
        num = 4;
        emit E10(num);
        num = 5;
        emit E10(num);
    }
    function moreOperations42() public returns (uint8 x) {
            x = 3;
            emit E10(x);
            x = 4;
            emit E10(x);
            x = 5;
            emit E10(x);
            x = 1;
            emit E10(x);
        }
}
contract MixedContactsExample390Mutated {
    event E11(uint test);
    uint test;
    constructor() public {
        test = 1;
        emit E11(test);
        test = 2;
        emit E11(test);
        test = 3;
        emit E11(test);
        test =
