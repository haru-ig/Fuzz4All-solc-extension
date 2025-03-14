pragma solidity ^0.8.0;
contract Mutate_0003
{
    function test() public pure
    {
        require(keccak256(abi.encodePacked(1)) == keccak256(abi.encodePacked(keccak256(abi.encodePacked(0x000))))) );
    }
}
