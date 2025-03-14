pragma solidity ^0.8.0;
contract NewABIv4
{
    function f() public pure
    {
        require(true);
        uint256 x;
        assembly {
            x := 2
        }
        x = ((-2) + uint256(uint160(-x)));
    }
}
