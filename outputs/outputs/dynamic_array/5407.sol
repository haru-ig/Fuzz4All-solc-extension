pragma solidity ^0.8.0;
contract Test34 {
    function mutated3(uint x) public {
    x = x-1;
    }
    function mutated2(uint x, uint y) public {
    x=y-1;
    }
    function mutated1(uint x) public {
    x=-1;
    }
}
