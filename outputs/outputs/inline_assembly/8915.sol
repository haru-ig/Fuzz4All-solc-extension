pragma solidity ^0.8.0;
contract EarlierGood
{
    uint internal x;
    constructor() public
    {
        x = 0x10000000000000;
    }
    function test() public
    {
        x -= (x -= this.total()) - this.multiplier();
        x |= this.multiplier();
        x *= this.multiplier();
        x >>= this.multiplier();
        x <<= x << x;
        x <<= 32;
        x <<= this.multiplier();
        x >>= this.multiplier();
        x <<= 0
    }
    function set(uint256 _x) public {
        x = _x;
    }
    function total() internal view returns (uint){
        return x;
    }
    function multiplier() internal pure returns (uint256){
        return 0x10000000000;
    }
}
