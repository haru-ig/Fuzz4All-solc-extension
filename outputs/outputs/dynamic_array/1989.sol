pragma solidity ^0.8.0;
contract FunctionalEquivalence_DynamicallySizedArrayMutation_11 {
    uint256[] public field;
    uint256 public size;
    constructor() public {
        uint256[1] memory tmp;
        tmp[0] = 1;
        size -= 1;
        size += 1;
        field = tmp;
    }
}

pragma solidity ^0.8.0;
contract FunctionalEquivalence_DynamicallySizedArrayMutation_12 {
    uint256[] public field;
    uint256 public size;
    constructor() public {
        uint256 memory tmp;
        tmp = 1;
        size -= 1;
        size += 1;
        field = field;
    }
}
