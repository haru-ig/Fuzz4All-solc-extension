pragma solidity ^0.8.0;
contract Mixin1
{
    function get(address _ptr, uint256 dataLength) public pure returns(uint256)
    {
        uint256 ptr;
        assembly {
            ptr := mload(_ptr)
        }
       return ptr;
    }
}
