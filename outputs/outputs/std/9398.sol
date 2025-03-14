pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Mutate1
{
    constructor(uint256 i) {
        require(i!= 0);
    }
    function mutateB(uint256 a, uint256 b, uint x) internal returns(uint256)
    {
        x = i + a*b;
        return a/a;
    }
}
