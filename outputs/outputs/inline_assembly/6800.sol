pragma solidity ^0.8.0;
contract MixedContactsExample530Mutated {
    event E1(uint256 num);
    event E2(uint256 num);
    event E3(uint256 num);
    uint256 test;
    constructor() public {
        test = 1;
        emit E1(test);
        test = 2;
        emit E2(test);
        test = 3;
        emit E3(test);
    }
    function moreOperations20() public {
            test = 3;
            emit E3(test);
            test = 4;
            emit E4(test);
            test = 5;
            emit E5(test);
        }
}
contract MixedContactsExample532Mutated {
    event E6(uint test);
    event E7(uint test);
    event E8(uint test);
    event E9(uint test);
    uint test;
    constructor() public {
        test = 1;
        emit E6(test);
        test = 2;
        emit E7(test);
        test = 3;
        emit E8(test);
        test = 4;
        emit E9(test);
