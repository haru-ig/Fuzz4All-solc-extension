pragma solidity ^0.8.0;
contract E1_Mutated{
    uint256 e;
    uint256 a;
    constructor() public {
        a = a^1;
        e = e^2;
    }
    function h() public {
        a = a^1;
        e = e^2;
    }
    function i() public {
        a = a^1;
        e = e^2;
    }
    function j() public {
        a = a^1;
        a = a^1;
        a = a^1;
        a = a^1;
        a = a^1;
        a = a^1;
        a = a^1;
    }
}
