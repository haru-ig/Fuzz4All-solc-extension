pragma solidity ^0.8.0;
contract Random
{
    function getRandom() public returns(uint){
        return uint(keccak256(abi.encodePacked(blockhash(block.number), block.difficulty)));
    }
}
