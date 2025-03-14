pragma solidity ^0.8.0;
contract Emulator5 {
    uint x; uint y;
    function init() public {
        if (x<=0) y = x+x;
        else y = x*(x+1)/2;
    }
}
