pragma solidity ^0.8.0;
library test7
{
    function test() public pure
    {
        assembly {
            setSlot 0,3,"555"
            setSlot 0,-3,mload(0x40)
            setSlot -8,8,mload(0x50)
        }
    }
}
