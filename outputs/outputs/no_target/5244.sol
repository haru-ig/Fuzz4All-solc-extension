pragma solidity ^0.8.0;
contract SimpleExample22 {
    constructor(bool a) public {
        num = (a)? 1 : 0xFFFF;
        num = uint256(uint160((1 > 2)? 1 : uint160(0xFFFF)));
        num = (num == 0xFFFF)? 1 : ( 1 > num)? ( a? 1 : 2 < num )? 1 : 1 : num;
        num = (num == 0xFFFF)? 19 + 1 : num;
    }
    uint256 public num = uint256(uint160(0x6667));
}
