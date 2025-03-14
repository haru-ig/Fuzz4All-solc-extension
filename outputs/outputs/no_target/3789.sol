pragma solidity ^0.8.0;
contract E7 {
        uint256 a;
        uint256 c;
    constructor() public {
        a = 0;
        c = 750;
    }
    function d() public {
        a = 1;
        c = 751;
    }
    function f() public {
        a = 2;
        c = c - 2;
        c = c - 2;
        c = c - 2;
        c = c - 2;
        c = c - 2;
        c = c - 2;
        c = c - 2;
        c = c - 2;
        c = c - 2;
        c = c - 2;
        c = c - 2;
        c = c - 2;
        c = c - 2;
        c = c - 2;
        c = c - 2;
        c = c - 1;
        a = c;
    }
}

pragma solidity ^0.8.0;
contract E8 {
        uint256 a;
        uint256 c;
    constructor() public {
        c = 0;
        a = 2;
    }
    function d() public {
        a = 2;
        c = c - 1;
    }
    function f() public {
        uint256 b;
        a = b / c;
        b = a / c;
        c = b / c + c - a;
    }
    function g() public {
        uint8[3] memory a;
        a[0] = 5
