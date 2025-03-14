pragma solidity ^0.8.0;
contract SemanticallyEquivalentBc6 {
    uint public constant variableB = 0;
    function test() public constant returns (uint) {
        uint _var1;
        assembly {
            _var1 := 0
        }
        return _var1;
    }
}
