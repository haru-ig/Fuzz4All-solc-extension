pragma solidity ^0.8.0;
contract Mutate3
{
    Uint256[5] _memory;
    function mutateX(uint256 x) public returns (uint256)
    {
        require(x >= 0);
        return (uint256(keccak256(abi.encode(x))) - 1) & (5 - 1));
    }
}
