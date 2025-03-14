pragma solidity ^0.8.0;

contract ImmutableBc6 {
    uint public constant variableB;
    function test() public returns (uint){
        uint var;
        assembly {
            var := 0
        }
        return var;
    }
}
