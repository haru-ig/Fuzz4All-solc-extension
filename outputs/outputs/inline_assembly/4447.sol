pragma solidity ^0.8.0;
contract Emulator5 {
    uint x;
    uint y;
    function init() public {
        x = x+y;
    }
    function add(byte x,byte y) public pure {
        uint ret = x+y;
        ret = x+27;
        ret;
    }
    function write() public {
        byte[] f = new byte[](1);
        write(new byte[](1));
        write(new byte[](2));
        write(new byte[](3));
        write(new byte[](f));
        write(new byte[](f.length));
        write(new byte[](f.length));
        write(new byte[](1));
        write(2);
        write(new byte[](2));

        uint[1] memory a;
        a = [0];
        a.length;
        a.length;
        a.length = 1;
        a[0];
        a.length;
        a.length;
   }
    function write(byte x) public pure {}
   function write(byte[] x) public pure {}
   function write(uint256 x) public pure {}
}
