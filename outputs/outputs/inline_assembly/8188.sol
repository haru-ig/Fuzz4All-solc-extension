pragma solidity ^0.8.0;
contract Mutated2 {
    uint256 public a;
    uint256 public b;
    constructor (uint256 _a) public {
        a = uint256(uint128(uint160(_a))^uint128(uint248(uint250(uint8(_a))))+uint128(5218*1000000000000000000)/uint256(100000000000000000));
        b = uint256(uint248(5218*1000000000000000000))^uint256(uint250(5218*1000000000000000000))^uint256(uint252(5218*1000000000000000000))^uint256(uint199(uint8(5218*1000000000000000000)));
    }
}
