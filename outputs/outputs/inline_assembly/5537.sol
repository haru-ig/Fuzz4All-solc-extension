pragma solidity ^0.8.0;
contract SemanticallyEquivalentBf4 {
    function test() public returns(uint) {
        uint _var1;
        assembly {
            _var1 := 0,000
        }
        return _var1;
    }
}
