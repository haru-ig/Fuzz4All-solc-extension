pragma solidity ^0.8.0;
contract Emulator7 {
    uint x;
    function add(uint x, uint y) public returns(uint) {
        write();
        return x;
    }
    function write() public pure {}
}
contract Emulator8 {
    uint x;
    function add(uint x, uint y) public returns(uint) {
        x;
        x;
        write();
        return x;
    }
    function write() public pure {}
}
contract Emulator9 {
    uint x;
    function add(uint x, uint y) public returns(uint) {
        uint ret = x-y;
        x;
        write();
        return ret;
    }
    function write() public pure {}
}
pragma solidity ^0.8.0;
contract Emulator10 {
   function check(uint r1, uint r2) public pure returns (uint) {
        if ( r2 == 0 ) {
            r1;
            r1;
            r1;
            r1;
            return r1+2;
        } else if ( r1 == 0 ) {
            r1;
            r1;
            r1;
            return r1-1;
        } else {
            return r1+1;
        }
   }
  function write() public pure {}
}
contract Emulator11 {
  function check(uint r1, uint r2) public pure returns (uint) {
        return 0 - check(r1, r2);
   }
  function write() public pure {}
}
contract Emulator12 {

    uint x;
    function add(uint x, uint y) public returns(uint) {
        uint ret = x-y;
        uint i0 = x;
        uint i1 = x;
        uint i2 = x;
        uint i3 = x;
        uint i4 = x;
      uint ret1;
       while( i0!= 0 ){
        i0 / 7 + 3;
    i2 / 7 - 3;
    i3 / 7 + 2;
    i4 / 7 - 2;
    i3 << 3;
    i4 << 2;
    I(0, i3);
   I(0, i4);
   ret1 = I(0, x);
   R1(ret1);
  I(0
