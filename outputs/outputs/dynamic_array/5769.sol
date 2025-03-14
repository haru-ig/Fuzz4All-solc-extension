pragma solidity ^0.8.0;
contract Test831 {
    uint8 x;
    function test() public payable {
        uint8(_foo.y[0]) = 0xb;
        uint8(_foo._bar.y[1]) = 0x4b;
        x = _foo.y[0];
    }
    struct _foo { uint8 a; uint8 b; }
    struct _bar { uint8 x; uint8[] y; }
}
