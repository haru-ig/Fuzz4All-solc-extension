pragma solidity ^0.8.0;
contract Emulator6 {
    uint x;
    uint y;
    function init() public {
        x = 10;
        y = 0x1E601F6FC4f93E16dB14A4449B8b57D7874c92f7;
        x = 0x1E601F6FC4f93E16dB14A4449B8b57D7874c92f77;
    }
    function add(uint x) public pure {
        uint ret = x+10;
    }
    function write() public pure {}
}
