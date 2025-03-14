pragma solidity ^0.8.0;
contract SimpleExample15 {
    uint x=0x01;
    uint s=0x20;
    function doSomething(address _) public {
        if (block.timestamp>s) {
            revert('Check');
        }
        uint t=0xfde;
        uint n=0xde2;
        if (n>t) {
            revert('Check');
        }
    }
}
