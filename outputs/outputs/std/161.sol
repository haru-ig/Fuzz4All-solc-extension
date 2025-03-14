pragma solidity ^0.8.0;
contract MintingProgram
{
    function mint_if_bigger(uint value, uint total, uint min) public view virtual returns (uint)
    {
        return (value >= min)? total - value : 0;
    }
}
