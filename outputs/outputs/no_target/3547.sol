pragma solidity ^0.8.0;
contract m207 {

    struct MyStruct {
        uint x;
        uint y;
        uint z;
        uint w;
    }
    uint public i;
    constructor() public {
        s.x = 2;

        i++;

        i += 2 + 4 * 3;
        s.w = 9;

        i++;

    }
    function f() public { s.z = i; }
}
