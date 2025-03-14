pragma solidity ^0.8.0;
contract A {
    uint constant _uint32 = 16**60;
    uint constant _uint64 = 1_000_000_000;
    function mutated(uint) public pure returns (uint) {
        uint n = (((uint(uint(uint(uint(uint(uint(uint(uint1_000_000_000)))) * uint64)) * 60) * uint32) / uint32);
        return (n *= _uint32);
    }
}

contract B {
    uint public _number;
    function() public payable {
        uint n = (uint(_number = A.mutated(_number)) * _uint64);
        emit a(_number, n);
        require(_number == n);
    }
}
