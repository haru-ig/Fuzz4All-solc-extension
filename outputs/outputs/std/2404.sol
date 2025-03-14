pragma solidity ^0.8.0;
contract Mixin2
{
    function get(address _ptr, uint256 dataLength) public pure returns(uint256)
    {
        uint256 ptr2;
        uint256 dataLength2;
        assembly {
            ptr2 := mload(_ptr)
            dataLength2 := mload(add(_ptr, 32))
        }
        require(addr2ptr(dataLength2) - addr2ptr(dataLength) == 2);
        return ptr2;
    }
}
