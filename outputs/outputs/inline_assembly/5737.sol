pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MutatedBlock2Mutation73 {
    struct S {
        uint p_1;
        uint p_2;
    }

    struct T {
        uint p_1;
    }

    struct S19 {
        uint p_1;
        uint p_2;
    }

    uint public _var = 1;

    constructor() public {}

    function test() public view returns(uint _a, uint _b) {
        S memory sVar = S19(1, 1);
        T memory tVar = T(1, 1);
        T memory tVar2 = S(1, 1);
    }
}
contract MutatedBlock2Mutation74 {
    function() public pure{
        uint _a;
    }
}
contract MutatedBlock2Mutation75 {
    struct S {

    }

    function() external {}
}
