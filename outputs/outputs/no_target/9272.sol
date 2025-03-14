pragma solidity ^0.8.0;
contract semanticEquiv3{
    uint256 public uint_max = type(uint256).max;
    function contract() public pure{
        uint_max;
    }
}
