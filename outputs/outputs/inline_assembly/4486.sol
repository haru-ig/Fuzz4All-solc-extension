pragma solidity ^0.8.0;

import "../contracts/Emulator5.sol";

contract Emulator2 {
    Emulator5 c;
    function init() public {
        Emulator5.set(3);
        c = Emulator5(address(this));
        c.init();
        Emulator5.write();
        Emulator5.set();
        Emulator5.write();
        Emulator5.set();
        Emulator5.write();
    }
    function set(uint _x) public { Emulator5.set(_x); }
    function write() public { Emulator5.write(); }
}
