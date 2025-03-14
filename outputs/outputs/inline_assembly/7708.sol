pragma solidity ^0.8.0;
contract L20Mutated {
    uint public _value;
    function f() internal pure returns(uint) {
        return _value;
    }
}
