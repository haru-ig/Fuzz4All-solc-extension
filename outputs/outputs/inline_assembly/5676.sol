pragma solidity ^0.8.0;
contract SemanticallyEquivalentCode {
    uint public _var = 1;

    modifier noOp() {

    }

    function test() public returns (uint) {
        noOp();
        _var = _var + 1;
        _var = _var - 1;
        return _var;
    }
}
