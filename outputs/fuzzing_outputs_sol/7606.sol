pragma solidity ^0.8.0;
contract Caller3
{
    function fallback() public {
        assembly {
            msg.data := mload(add(mload(0x40), 0x20))
        }
    }
}
