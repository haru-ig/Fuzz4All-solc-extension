pragma solidity ^0.8.0;
contract Emulator2 {
    uint _x; uint[8] storage _internalInts;
    function init() public {
        _internalInts[0] = _x-2;
        _internalInts[1] = _internalInts[3]-3;
        _internalInts[2] = uint(uint8(255));
        uint[5] storage array5 = [4,3,0,15,_x];
        _internalInts[3] = array5[0];
        _internalInts[4] = array5[3];
        uint[13] storage array13 = [2,1,_x,_internalInts[2],4,2,5,2,0,6,_internalInts[2],3,3,
