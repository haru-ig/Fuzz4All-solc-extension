pragma solidity ^0.8.0;
contract NewY3 {
    struct A {
        uint x;
    }
    struct B {
        uint y;
    }
    mapping(uint256 => A) public a;
    function add(uint256 x, uint256 y) public {
        uint256 x2 = x ^ x;;
        A storage aa;
        aa.x = x;
        B storage bb;
        bb.y = x + 12;
        aa.x = 1;
        bb.y = x + 1;
        aa.x = x2;
        bb.y = x + x2;
        aa.x = 5;
        bb.y = x + 1;
    }
    function sub(uint256 x, uint256 y) public {
        uint256 x2 = x ^ x;;
        A storage aa;
        aa.x = x + 5;
        B storage bb
