pragma solidity ^0.8.0;
contract mutated {
    uint256 constant constant_variable = 12345678;
}
contract myMutated {
    uint256 constant constant_variable = _globalConstant + 1;
    uint256 internal immutable _myVariableValue = 43743845;
    constructor (){
    }
}
