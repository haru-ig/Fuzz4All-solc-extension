pragma solidity ^0.8.0;
contract A {
function g(uint256) public returns (uint);
    function h(uint256) public returns (uint, uint) {
        return (1, 1);
    }
}
contract B  {
    function g(uint256) public returns (uint25);
}
contract C  {
    uint i;
    function g(uint256) public returns (uint25 withmsg);
}
contract D {
    function f() returns (uint from, uint to, uint value);
}
contract E  {

    function f() returns (uint25, uint25);
}
contract F  {
    function g(uint256) public returns (uint) {
        return uint(1) and 0xffff;
    }
}
contract G  {
    function f() returns (uint);
    function g(uint256) public returns (uint) {
        return uint(1);
    }
}
contract H  {
    function f(int) public returns (int) {
        return int(uint256(uint8(1)));
    }
}
contract I  {
    function h(uint256) public returns (uint2, uint2, uint2) {
        return uint2(uint2(uint(1))), uint2(uint(1)), uint2(0);
    }
}
contract J  {
    function h(uint256) public returns (uint2);
}
contract K {
    function h(uint256, uint256) public returns (uint256, uint256);
    function g(uint256, uint256) public returns (uint256);
}
