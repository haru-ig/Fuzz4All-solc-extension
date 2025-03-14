pragma solidity ^0.8.0;
contract MutatedBlock2Mutation76 {
    uint public _var;
    uint public _another = 0;
    uint public _var2;
    function test1() public returns (uint) {
        assembly {
            div(_var, _var2)
            div(_another, _another)
            div(_var2, _var2)
            _var = div(_var, _var2)
            _another = div(_another, _another)
            _var2 = div(_var2, _var2)
        }
        return _var;
    }
}
