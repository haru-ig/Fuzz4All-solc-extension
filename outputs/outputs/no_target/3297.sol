pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract modified3{
    mapping(uint => uint) a;
    function set(uint k, uint v) public { a[k] = v; }
}
library modified_lib{
    function add(uint x, uint y) internal pure returns(uint) { return x + y;}
}
