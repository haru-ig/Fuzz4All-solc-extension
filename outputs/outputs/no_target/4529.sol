pragma solidity ^0.8.0;
interface I0 {
    function f() external;
}
interface I1 {
    function g() external;
}
interface I2 {
    function h() external;
}
contract E {
    function h() public pure returns(bool) { return false; }
    function g(I0 x) public pure returns(bool) { return x.f(); }
    function h(I1 x) public pure returns(bool) { return x.g(); }
    function g2(I0 x) public view returns(bool) { return x.f(); }
    function h2(I1 x) public view returns(bool) { return x.g(); }
}
contract C {
    function f() public pure returns(bool) { return new E().f(); }
    function f2() public pure returns(bool) { return (new E()).f(); }
    function f3() public pure returns(bool) { return new E().f2(); }
    function f4() public pure returns(bool) { return (new E()).f2(); }
    function f5() public pure returns(bool) { return new E().f3(); }
    function f6() public pure returns(bool) { return (new E()).f3(); }
    function f7() public pure returns(bool) { return new E().g(I0(uint256(0))); }
    function f8() public pure returns(bool) { return (new E()).g(I0(uint256(0))); }
    function f9() public pure returns(bool) { return new E().h(I1(uint256(0))); }
    function f10() public pure returns(bool) { return (new E()).h(I1(uint256(0))); }
    function f11() public pure returns(bool) { return new E().g2(I0(uint256(0))); }
    function f12() public pure returns(bool) { return (new E()).g2(I0(uint256(0))); }
    function f13() public pure returns(bool) { return new E().h2(I1(uint256(0))); }
    function f14() public pure returns(bool) { return (new E()).h2(I1(uint256(0))); }
}
contract D {
    function f(I1 x) public pure returns(bool) { return x.g(); }
    function f2(I1 x) public view returns(bool) { return x.g(); }
    function g(I1 x) public pure returns(bool) { return x.g2(); }
    function g2(I1 x) public view returns(bool) { return x.g2(); }
    function h(I1 x) public pure returns(bool) { return x.g(); }
    function h2(I1 x) public view returns
