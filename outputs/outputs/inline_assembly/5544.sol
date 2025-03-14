pragma solidity ^0.8.0;
contract SemanticallyEquivalentBc8 {
    uint constant constantA = 0;
    address constant constantB = constantA;
    function test() public pure returns(uint) {
        uint _var1;
        assembly {
            _var1 := 0
        }
        return _var1;
    }
}
