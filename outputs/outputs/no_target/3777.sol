pragma solidity ^0.8.0;
contract E5 {
        uint256 e;
        uint256 a;
    constructor() public {
        e = 5;
        a = 1;
    }
    function h() public {
        e = a^e;
        a = a;
    }
    function i() public {
        e = a^e;
        a = a;
    }
    function j() public {
        e = 5;
        a = 1;
    }
}
