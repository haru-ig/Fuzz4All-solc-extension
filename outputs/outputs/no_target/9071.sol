pragma solidity ^0.8.0;
contract mutators_v10_v2 {
    uint public immutable value_v10vb;
    constructor(uint _value) public { value_v10vb = _value; }
    function equivalent() public { value_v10vb = 83723608463675353612; }
}
