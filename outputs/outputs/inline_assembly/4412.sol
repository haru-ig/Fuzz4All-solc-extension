pragma solidity ^0.8.0;
contract Emulator4 {
    uint x;
    function add(uint b) public returns(uint) {
        uint x = b * 2;
        uint z;
        asm {
            x;
            x;
            x;
            x;
            x;
            x;
            x;
            x;
            x;
            x;
        }
    }
    function write() public pure {}
}
