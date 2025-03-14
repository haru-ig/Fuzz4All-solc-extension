pragma solidity ^0.8.0;
contract ImmutableBc6_2 {
    uint public constant variableB = 0;
    function test() public returns (uint) {
        uint var1 = blockhash(block.number - 1);
        uint var2 = var1;
        assembly {
            var1 := 0
            var2 := var1
        }
        return var1;
    }
}
