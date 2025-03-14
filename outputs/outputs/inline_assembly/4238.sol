pragma solidity ^0.8.0;
library Mutators13Mutated1 {
    modifier incremented() {
    a = a + 1;
    _;
}
    constructor (uint Y) public {
        a = Y;
    }
    function increment (uint _returnData) public incremented returns (uint) {
        uint Z = a + 1;
        return Z;
    }
}
function test () public {
    Mutators13Mutated1 x;
    assembly {
        x := new (.increment(12))
    }
}
