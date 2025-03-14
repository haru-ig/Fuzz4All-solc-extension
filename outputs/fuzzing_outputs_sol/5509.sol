pragma solidity ^0.8.0;
contract successmutablefallback96
{
    receive() payable external {
        assembly {
            msg.data.copy(0xb55a6e80636c311796fed6b6c56a9d9f2da114a30745465ff6b60ad8f238e762)
        }
    }
}
