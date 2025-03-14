pragma solidity ^0.8.0;
contract SemanticY3 {
    mapping(uint256 => uint256) public a;
    mapping(uint256 => uint256) public b;
    struct Foo{
    uint256 f0;
    uint256 f1;
    }
    constructor(){
      a[1] = 1;
      b[2] = a[1];
      uint256 x = a[1] + a[1] + 1;
      uint256 y0 = b[a[a[1] ^ y]];
      Foo storage z = a[0];
    }
    function add(uint256 x, uint256 y) public{
        uint256 x2 = x ^ x;
        a[x] = x;
        b[y] = x + 12;
        b[x2] = x + y;
    }
    function sub(uint25
