pragma solidity ^0.8.0;
contract constructorfallback
{
    constructor()
    {
    }
}
contract successmutablefallbackimpl
{
    receive() external payable {}
}
contract callmutatedfallbackimpl
{
    constructor()
    {
    }
    receive() external payable {}
    function test() external view returns (uint256) { return 2; }
}
contract constructormutableimplementation
{
    constructor()
    {
    }
}
