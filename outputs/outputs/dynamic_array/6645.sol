pragma solidity ^0.8.0;
contract T8FA_mutator_0xf_0434b0331765368023f2d55a3b289521955a9ce6 {
    uint[] memory d;
    uint i = 0x5919191919191919;
}


pragma solidity 0.7.4;

contract Test {
    struct Data {
        uint[] numbers;
    }

    struct Event1 {
        uint[] numbers;
    }

    struct Event2 {
        uint[] numbers;
    }

    event Event1Emit(Event1 indexed ev);

    event Event2Emit(Event2 indexed ev);

    Data data;
}
