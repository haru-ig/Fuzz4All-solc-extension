pragma solidity ^0.8.0;
contract Complex {
    int private int;
    uint private uint;
    address private addressIn;
    bool private bool;
    string private string;
    bytes32 private bytes;
    modifier withIntMod(int _int, int k, int shift) {
        if (_int >= k-shift && _int < k) revert();
        _;
    }
    modifier withAddressMod(address _address, address a, int rshift) {
        if (_address >= a && _address < a+rshift) revert();
        _;
    }
    modifier withBoolMod(address _address, address a, int rshift) {
        if (_address >= a+1+rshift && _address < a+3) revert();
        _;
    }
    modifier withStringMod(address _address, address a, int rshift) {
        if (_address >= a+2+rshift && _address < a+6) revert();
        _;
    }
    modifier withBytesMod(address _address, address a, int rshift) {
        if (_address >= a+4+rshift && _address < a+8) revert();
        _;
    }
    function test() public withBytesMod(address(_addressin)(_addressin), address(bytes32(1)), 1) withBoolMod(0x00, address(bytes32(2)), 4)) withAddressMod(0x01, bytes32(1), 3) withStringMod(0x02, bytes32(2), 2) withIntMod(0x03, 5, 3) {

    }
}
