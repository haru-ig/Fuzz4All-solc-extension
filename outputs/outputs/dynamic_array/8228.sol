pragma solidity ^0.8.0;
contract Solidity {
    uint public x;
    uint public y;
    byte[] public z;
    function f() public {
        this.z = [0x80, 0x00, 0x00, 0x00];
        z[0x06] = 0x00;
        y = x;
        x = 0x800000000000000000000000000000000000000;
    }
}
