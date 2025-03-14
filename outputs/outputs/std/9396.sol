pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Mutate1
{
    uint256 _x;
    constructor() public {}
    function mutateB(uint256 a, uint256 b, uint x) public
    {
        x += a*b;
    }
}
