pragma solidity ^0.8.0;
contract Emulator2 {
    uint x;
    function add(uint c) public returns(uint ret){
        uint p;
        uint a = x;
        x = 10 + 5;
        ret = a-c;
        p = x -7;
    }
}
