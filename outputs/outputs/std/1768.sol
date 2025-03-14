pragma solidity ^0.8.0;
contract Mutated {
    bytes4 constant public muta3 = 0x4de272c5;
    uint constant public _bytes4_size = 4;
    function mutateP(uint value) public pure { value += uint(uint32(0x58)); }
    function mutateB(uint value) public pure { value += muta3; }
}
