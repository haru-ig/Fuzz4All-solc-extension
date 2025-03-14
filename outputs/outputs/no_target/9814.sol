pragma solidity ^0.8.0;
contract c {
    mapping(uint => uint) a;
    function test(uint _a) public returns (uint) {
        return a[uint160(-1)];
    }
}
