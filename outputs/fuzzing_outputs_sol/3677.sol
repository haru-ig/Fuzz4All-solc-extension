pragma solidity ^0.8.0;
contract MutateSemantic8Caller5 {
    function modifyB6Mutate(uint256 x, uint y) pure public returns (uint) {
        emit x;
        return 0x0;
    }
    function modifyB9Mutate(uint x, uint y) pure public returns (uint) {
        emit B9Mutate.testUint128(x);
        emit B9Mutate.testUint64(x);
        return 0x0;
    }
}

contract MutateSemantic9Caller6 {
    function contractWithFallback() public payable {
        new MutateSemantic7Caller4().modifyB7Mutate(0, 0);
        new MutateSemantic8Caller5().modifyB6Mutate(0, 0);
    }
}
contract B9Mutate {
    event testUint128(uint128);
    event testUint64(uint64);
    function testUint() public pure {
        testUint128(_uint128(0));
        testUint64(_uint64(0));
    }
    uint testUint128(uint128) public pure {
        return 0x0;
    }
    uint testUint64(uint64) public pure {
        return 0x0;
    }
}
