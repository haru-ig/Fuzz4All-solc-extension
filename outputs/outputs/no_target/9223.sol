pragma solidity ^0.8.0;
contract mutated {
    uint256 constant constant_variable = 1234567890;
}
contract myMutated {
    uint256 internal immutable _myVariableValue = 43743850;
    constructor (){
    }
}

pragma solidity ^0.8.0;
contract myMutated {
    uint256 internal immutable _myVariableValue = 43743845;
}
contract myMutated2 is myMutated {
    constructor (){
    }
}
