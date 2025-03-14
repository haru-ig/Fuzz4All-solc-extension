pragma solidity ^0.8.0;
contract Mutater7 {
    uint32 internal _value;
    function mutatedFunction() public pure {
        _value = 1;
    }
    function mutatedFunction() public pure {
        _value = _value + 1;
    }
}
