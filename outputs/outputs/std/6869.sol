pragma solidity ^0.8.0;
pragma experimental "ABIEncoderV2";
contract A {
    bytes8 string8;
    struct B { uint x; bytes4 y; address z; }
    interface C { uint a; address b; function f(uint d); }
    mapping (address => B) map;
    constructor(address owner_) { map[owner_] = B(0x42, 0x43, owner_); }
    function f() public {
        map[msg.sender] = B(map[msg.sender].x - 100, map[msg.sender].y, 0x42);
    }
    function g() public {
        map[msg.sender] = B(map[msg.sender].x + 100, map[msg.sender].y, msg.sender);
    }
    function h() public {
        B memory zero = B(0, 0, msg.sender);
        map[zero.z] = B(map[zero.z].x + 100, map[msg.sender].y, msg.sender);
    }
    function i() private pure {
        map[msg.sender] = B(map[msg.sender].x + 100, map[msg.sender].y, msg.sender);
    }
}
