pragma solidity ^0.8.0;
contract E6 {
        uint256 a;
        uint256 c;
    constructor() public {
        a = 0;
        c = 750;
    }
    function d() public {
        c = 751;
        a = c;
        a = a^a;
        a = a^a;
        a = a^a;
        a = a^a;
        a = a^a;
        a = a^a;
        a = a^a;
        a = a^c;
        a = a^c;
        a = a^c;
        a = a^c;
        a = a^c;
        a = a^c;
        a = a^c;
        a = a^c;
        a = a^c;
    }
    function f() public {
        uint256 a = a -1;
        a = a^a;
        a = a^a;
        a = a^a;
        a = a^a;
        a = a^a;
        a = a^a;
        a = a^a;
        a = a^c;
        a = a^c;
        a = a^c;
        a = a^c;
        a = a^c;
        a = a^c;
        a = a^c;
        a = a^c;
        a = a^c;
        a = a^c;
        a = a^c;
    }
}
