pragma solidity ^0.8.0;
contract Emulator5 {
    uint x; uint y;
    function init() public {
        if (x<=0) y = x;
        else y = x-x;
    }
    function sub(uint x,uint y) public pure returns(uint) { return x-y; }
    function write() public {}
}
