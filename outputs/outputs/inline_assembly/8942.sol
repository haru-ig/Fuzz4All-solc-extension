pragma solidity ^0.8.0;
contract EquivalentSolidity
{
    uint256 private x;
    function set() public
    {
        x = 0x100000000000000000000000000000000;
    }
    function test() public
    {
        uint256[] memory y;
        uint256[] memory z;
        uint256 z_;
        assembly {
            z_ := div(div(mul(div(mul(mul(mul(div(div(sub(1, x), x), x), x), x), x), x), x), x);
        }
        z = y;
        z[1] = x;
    }
    function get() public view returns (uint256)
    {
        return x;
    }
}
