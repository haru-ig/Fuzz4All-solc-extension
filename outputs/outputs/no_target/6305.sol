pragma solidity ^0.8.0;
contract C0 {
    function a() public pure returns (address) { uint x; uint y; }
}
contract C1 {
    function a() public pure returns (address) { uint x; }
}
contract C2 {
    function a() public pure returns (address) { uint x; }
}
contract C3 {
    function a() public pure returns (address) { uint x; }
}
contract C4 {
    function a() public pure returns (address a) { a = address(1); }
}
contract C5 {
    function a() public pure returns (address a) { a = uint256(1); a = address(1); }
}
contract C6 {
    function a() public { uint a; uint256 b; address c; }
}
contract C7 {
    function a() public pure { uint a; uint b; uint c; uint d; uint e; address f;}
    function b() public pure { uint256 a; uint b; uint c; uint d; uint e; address f; }
    function c() public pure { uint a; uint b; uint c; uint d; uint256 e; address f; }
    function d() public pure { uint a; uint b; uint c; uint256 d; uint e; address f; }
}

contract C7 {
    function c() public pure { uint x; uint y; }
}
interface I {
    function f() public view returns (address);
    function g() public view returns (bool);
    function h() public view returns (uint);
    function i() public view returns (bytes32);
}
contract C9 {
    struct S {
        function a() public view returns (uint);
        function b() public returns (uint4);
    }
    S[] ss;
}

contract C10 {
    struct S {
        function a() public view returns (uint);
        function b() public returns (uint4);
    }
}
