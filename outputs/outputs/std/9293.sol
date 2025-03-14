pragma solidity ^0.8.0;
contract Array
{
    string public array;
    constructor() public
    {
        string memory str = "Hello, world";
        array = str;
    }
    function arrayWithMutations() internal
    {
        string memory newStr = "Hello, world2";
        array = newStr;
    }
    function getSumOfElements() public pure returns(uint64)
    {
        string memory str = "Hello, world";
        return uint64(keccak256(abi.encode(str)));
    }
}
