pragma solidity ^0.8.0;
contract O {
    uint i;
    bool b;
    constructor O() {
        i = 0;
        b = true;
        revert();
        i = 1;
        bytes memory data;
        assembly { data := mload(add(byte(0xe6), 0x20)) }
        i = uint256(data) + 3;
    }
    function f(address a) public {
    }
    function g(uint a) internal pure returns (uint, uint){
        uint b;
        b - a;
        return (a, b);
    }
    function h(uint a) public {
        uint const n = a + 48;
    }
}
