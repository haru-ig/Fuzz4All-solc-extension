pragma solidity ^0.8.0;
contract Mutated2 {
    enum MutType2 {
        B
    }
    event Mutated2(uint a, uint b);
}
library Mut {
    function testEvent(MutType t) private {
        Mutated(uint(t)).emit();
    }
    function testEvent(MutType2 t) private {
        Mutated2(uint(t), uint(t)).emit();
    }
}
