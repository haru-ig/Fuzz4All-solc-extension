pragma solidity ^0.8.0;
contract Bar {
    function g(uint256 x) internal pure returns (uint256) {
        return x +  x +  x +  x;
    }
}

contract SafeMath {
    constructor() {

    }


    function f() public pure { return 0; }
    function g(uint256 x) internal pure returns(uint256) {
        return x +  x +  x +  x;
    }
}
contract SafeMath {
    constructor(uint256 _x) {
        x = _x;
    }
    uint256 x;


    function f() public { return 0; }
    function g(uint256 y) internal pure returns(uint256) {
        return x + x + x + y;
    }
    function h() public { f(); }
}
contract SafeMath {
    constructor(uint256 _x, uint256 _y) {
        x = _x;
        y = _y;
    }
    uint256 x;
    uint256 y;


    function f() internal { return 0; }
    function g(uint256 z) internal pure returns(uint256) {
        return x + x + x + z;
    }
    function h() public { f(); }
}
contract Bar {
    function f1(uint256 x) public {

    }


    function f2(uint256 _x) internal {
    }
    function f3(uint256 x) {

    }


    }
    function f4(uint256 x) public pure {
    }
    function f5(uint256 x) public pure returns(uint256) {
        return g();
    }
    function g() public pure returns(uint256) {
        return x + x;
    }
    function h(uint256 x) public pure {
