pragma solidity ^0.8.0;
contract SemanticallyNotEquivalent11 is SemanticallyNotEquivalent12 {
   uint32 v;
   uint32 x;
   function f(uint32 x) public returns (uint32) {
        return a + x;
    }
    function g(uint32 x) public returns (uint32) {
        v = x;
        return a + x;
    }

    function h() public returns (uint32) {
        uint32 y = v / x;
        return v * y;
    }
    function i() public {
        a = uint32(i);
    }
    function j() public returns (uint32) {
        a = i + 7;
        return a;
    }
}
contract SemanticallyNotEquivalent13 {
    function f() public {
        a = 1;
    }
    function g() public {
        v = a + 4;
    }
    function h() public {
        v = a - 3;
        return a;
    }
    function i() public {
        v = 10;
        a = a + 10;
    }
    function j() public {
        a = v + 6;
    }

}
contract SemanticallyEquivalent12 {
    uint256 b;
    function f(uint256 x) public returns (uint256){
        return a + x;
    }
}
contract SemanticallyEquivalent11 is SemanticallyEquivalent12 {

    uint32 v;
    uint256 x;
    function f(uint256 x) public returns (uint256) {
        return a + x;
    }
    function g(uint256 x) public returns (uint256) {
        v = x;
        return a + x;
    }

    function h(uint256 x) public returns (uint256) {
        uint256 y = v / x;
        return v * y;
    }
    function i(uint256 x) public {
        a = uint256(i);
    }
    function j(uint256 x) public returns (uint256) {
        a = i + x;
        return a;
    }

}
contract SemanticallyEquivalent13 {
    function f(uint256 x) public {
        a = 1;
    }
    function g() public {
        v = a + 3;
    }
    function h() public {
        v = a - 1;
        return a;
    }
    function i(uint256 x) public {
        v = 10;
        a = a + x;
    }
    function j(uint256 x) public {
        a = v + 9;
    }
}
contract SyntaxAndSemantics {
    uint s = 11;
    uint f(uint x) public returns (uint w){
        uint y =x + 5;
        s = w + y;
        return s;
    };
    function g() public {
        uint x = 10;
        uint y = y + x;
        uint3
