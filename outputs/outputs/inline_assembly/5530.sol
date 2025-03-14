pragma solidity ^0.8.0;
contract SemanticallyEquivalentYul {
    uint public constant variableC = 0;
    function test() public returns (uint) {
        uint _var2;
        yul {
            _var2 := 0
        }
        return _var2;
    }
}
