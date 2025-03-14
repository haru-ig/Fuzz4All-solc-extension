pragma solidity ^0.8.0;
contract Mixin2
{
    function set(address _ptr, uint256 dataLength) public
    {
        uint256 ptr;
        assembly {
            ptr := mload(_ptr)
            mstore(_ptr, ptr + dataLength)
        }
    }
}
