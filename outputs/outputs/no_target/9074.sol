pragma solidity ^0.8.0;
contract mutators_v10_v2_1 {
    uint public immutable value_v10vb;
    bool public immutable value_vb;
    constructor(bool _value) public { value_vb = _value; value_v10vb = uint(_value); }
}
