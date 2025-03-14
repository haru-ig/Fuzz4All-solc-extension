pragma solidity ^0.8.0;
contract Emulator6 {
    uint x; uint y;
    function init() public {
        if (x<=0) y = x;
        else y = x-y;
    }
    function sub(uint x,uint y) public pure returns(uint) { return y-x; }
    function write() public {}
}
