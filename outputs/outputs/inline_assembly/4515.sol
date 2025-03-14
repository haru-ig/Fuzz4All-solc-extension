pragma solidity ^0.8.0;
contract Emulator7 {
    uint x; uint y;
    function init() public {
        if (x>0) {
            y = x;
        } else if (x>0) {
            x=x+x;
        }
    }
    function sub(uint x,uint y) public pure returns(uint) { return x-y; }
    function write() public {}
}
