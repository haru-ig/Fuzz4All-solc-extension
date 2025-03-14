pragma solidity ^0.8.0;
contract Emulator9 is Emulator8{

    bytes2 b;
    function add(uint x) public {
        uint ret = x+4;
        write();
        x;
        ret;
    }
    function write() public pure{
        assembly{

            mstore(0x5,0x0041)
        }
    }
}
