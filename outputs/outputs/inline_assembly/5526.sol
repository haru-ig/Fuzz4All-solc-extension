pragma solidity ^0.8.0;
contract SemiImmutableBc6 {
    uint public constant variableB = 0 uint constant variableB = 0;
    function test() public returns (uint) {
        uint var1;
        assembly {
            var1 := 0
        }
        return var1;
    }
}
