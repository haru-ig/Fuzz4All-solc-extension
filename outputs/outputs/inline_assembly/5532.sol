pragma solidity ^0.8.0;
contract SemanticallyEquivalentBc6_v4 {
    uint public constant variableB = 0;
    function test() public returns (uint) {
        uint _var1;
        assembly {
            _var1 := 400000000
        }
        uint _var2 = 2.s;
        _var1 = sub(_var1, _var2);
        return _var1;
    }
}
