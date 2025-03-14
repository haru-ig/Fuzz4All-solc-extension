pragma solidity ^0.8.0;
contract Mutate2
{
    function MutateString(string memory a, string memory b) public pure returns(string memory)
    {
        string memory abcd="abcd123456789012345678901234567890";
        return(bytes(a).append(abi.encodePacked(a,ab)));
    }
}
