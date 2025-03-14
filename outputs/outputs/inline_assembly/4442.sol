pragma solidity ^0.8.0;
contract Emulator10 {
    uint x;
    function init() public {
        x = 3;
    }
    function plus1() public {
        uint ret = add(1);
        ret = add(2);
        ret;
    }
    function write() public pure {}
}
