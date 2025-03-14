pragma solidity ^0.8.0;
contract Mutators7 {
    function setConstantVariable (uint constant constantVariable) public {
        X = constantVariable;
    }
    uint constant constantVariable = 100000000000;
    uint X;
    function setX (uint constant constantVariable) public {
        X = constantVariable;
    }
    function getConstantVariable () public view returns (bytes32 constant constantVariable) {
        return constantVariable;
    }
}
