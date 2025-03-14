pragma solidity ^0.8.0;
contract Emulator6 {
    uint x; uint y;
    (uint z,) = (x,y);
    function init() public {
        (x,y) = (y,z);
    }
    function add(uint x,uint y) public pure returns(uint) {
        uint ret = x+y;
        uint ret2 = x+x;
        return ret+ret2;
    }
    function write() public {}
}
