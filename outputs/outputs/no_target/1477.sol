pragma solidity ^0.8.0;
contract Semantic0031
{
    uint256 x;
    function same() public pure {
        x = x + x;
        if (x < 0) {
            x = 0;
        } else {
            x = x + 1;
        }
    }
}
