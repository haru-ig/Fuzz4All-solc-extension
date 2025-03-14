pragma solidity ^0.8.0;
contract mutated {
    uint256 internal immutable _myVariableValue = 43743845;

    constructor () {
        _callMe(uint256(12L));
        _callMe(bytes1(255));
    }

    function _callMe (uint256 value) internal {
        require(value == constant_variable, "Error");
    }
}
