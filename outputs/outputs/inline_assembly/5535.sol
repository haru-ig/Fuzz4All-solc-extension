pragma solidity ^0.8.0;
contract SemanticallyEquivalentBc6Simplified {
    uint constant constantA = 0;
    uint internal constant constantB = constantA;
    function test() public returns(uint) {
        uint _var1;
        assembly {
            _var1 := 0
        }
        return _var1;
    }
}
