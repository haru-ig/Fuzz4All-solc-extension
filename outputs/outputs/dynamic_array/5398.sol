pragma solidity ^0.8.0;
contract Test16 {
    function mutated1(uint x, uint y) public {
        uint y2 = x;
        uint [6][6] memory mem1;
        mem1;
        x;
        y2;
        y;
    }
}
