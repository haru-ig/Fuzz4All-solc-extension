pragma solidity ^0.8.0;
contract S12Mutated13 is S12Mutated12 {
    uint8 b = 120;
    constructor () public {
         a = b;
    }
    function change() public {
        a -= 5;
    }
    function change2() public {
        a ^= 0xF;
    }
}
