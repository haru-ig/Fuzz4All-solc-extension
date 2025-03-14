pragma solidity ^0.8.0;
contract MixedContactsExample528MutatedAgain {
    event E1s(uint8 num);
    event E2s(uint8 num);
    event E3s(uint8 num);
    event E4s(uint8 num);
    event E5s(uint8 num);
    uint8 test;
    constructor() public {
        test = 1;
        emit E1s(test);
        test = 2;
        emit E2s(test);
        test = 3;
        emit E3s(test);
        test = 4;
        emit E4s(test);
        test = 5;
        emit E5s(test);
    }
    function moreOperations20() public {
            test = 3;
            emit E3s(test);
            test = 4;
            emit E4s(test);
            test = 5;
            emit E5s(test);
        }
}

pragma solidity ^0.8.0;
contract MixedContactsExample530MutatedAgain {
    event E1s(uint8 num);
    event E
