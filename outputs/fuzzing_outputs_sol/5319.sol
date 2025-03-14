pragma solidity ^0.8.0;
contract Fallback5
{
        uint64 constant x = 42;

        function c() public payable {
             x ^= uint64(address(this).balance);
             x ^= uint64(uint8(uint16(address(this).balance))) << 8;
        }

        receive() { }
}
