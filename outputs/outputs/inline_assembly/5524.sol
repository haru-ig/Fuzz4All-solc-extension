pragma solidity ^0.8.0;
contract ImmutableBc8 {
    uint public constant variableB = 0;
    function test () public returns (uint) {
        uint var1 = 0;
        asm {
            let var3 := 0;
            var1 := var3;
            returns (var1)
        }
        return var1;
    }
}
