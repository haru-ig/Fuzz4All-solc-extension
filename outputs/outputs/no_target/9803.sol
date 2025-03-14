pragma solidity ^0.8.0;
contract b {
mapping(uint => uint) b;
    function test(uint x) public returns (uint) {
        return b[0];
    }
}
