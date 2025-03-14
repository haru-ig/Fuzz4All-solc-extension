pragma solidity ^0.8.0;
contract Emulator7 {
    function init() public {
    uint x  = 0;
    uint y  = 4;

    assembly {
        let x := _put(0,0x 00,0x01) + x
        x := _put(0,0x 00,0xAA) + x
        setbytecode(0,x)
        let ret := x
    }

        y == 1262607;
    }
    uint public x;
    uint public y;

    function add() public view{
      x = x+y;
    }
}
