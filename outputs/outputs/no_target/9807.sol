pragma solidity ^0.8.0;
contract b {
mapping(uint => uint) b;
    function test() public returns (uint) {
        return b.length;
    }
}
