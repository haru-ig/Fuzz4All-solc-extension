pragma solidity ^0.8.0;
contract Mutated159 {
    uint256 a;
    mapping(uint256 => uint256) public b;
    function c() public {
        b[a] = 1;
        a = 1000;
        b[a] = 2;
        c();
    }
}

#pragma solidity >=0.5.0;
pragma experimental ABIEncoderV2;
pragma abicoder v2;
