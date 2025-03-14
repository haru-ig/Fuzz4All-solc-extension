pragma solidity ^0.8.0;
contract FallbackModification
{
    address public immutable addr;
    byte[10] private _memory = 'Hello';
    constructor(address _addr)
    {
        addr = _addr;
    }

    fallback() view public
    {
        assembly
        {

            mstore(0xe10, mload(_memory))


            returndatacopy(0x0, 0x90, mload(0xe10))
        }
    }
    receive() payable public
    {
        assembly
        {


            if and(msg.value, 0xffffffffffffffff)
                {
                    mstore(0xe10, mload(_memory))


                    returndatacopy(0x0, 0x90, mload(0xe10))


                    gas
                }
        }
    }
}
