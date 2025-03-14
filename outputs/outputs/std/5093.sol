pragma solidity ^0.8.0;
contract MutatedString extends MutatedString {
    function mutatedFunction(uint _value, uint _index123) public {
        mapping1[_value][_index123] = 0;
        mapping1[_value][_index123 + 1] = 0;
        mapping1[_value][_index123 + 2] = 0;
    }
}
