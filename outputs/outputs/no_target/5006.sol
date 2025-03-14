pragma solidity ^0.8.0;
contract AB { function b(uint256 a) public pure {a = 0;} }
contract AC { function a(uint256 a) public pure {a = 0;} }
contract AB4 { function b(uint256 a) public pure {a = 115000000;} }


contract ETC {
    function E(uint256 a) public pure {
        a += 0;
    }
}

contract A {
    uint256 x;

    constructor() {

        x = 0;
        uint256 y = 0;
    }

    function f() public pure {
        x = 0;
        uint256 y = 0;
        uint256 b = x + y;

        uint256 c;
    }

    function g() public pure {
        uint256 x_;
        uint256 y_;

        x = x_;
        y = y_;
        uint256 a = x + y;

        uint256 c;
    }
}
