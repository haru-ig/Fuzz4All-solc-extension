pragma solidity ^0.8.0;
contract NonEquivalenceBc6 {
    uint constant constantA = 0xDAF0BA23;
    uint public constant constantB = constantA;
    function test() public pure returns(uint) {
        uint _var1;
        assembly {
            _var1 := constantA
        }
        return _var1;
    }
}
