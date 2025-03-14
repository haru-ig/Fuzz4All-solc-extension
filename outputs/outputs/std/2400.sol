pragma solidity ^0.8.0;
contract Mixin2
{
    function get(uint256 elementIndex) public pure returns(uint256)
    {
        return elementIndex;
    }
}
