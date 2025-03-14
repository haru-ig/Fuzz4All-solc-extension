pragma solidity ^0.8.0;
contract StructuralEqualityDynamicallySizedArrayAssignment_4 {
    uint256[] public field;
    uint256 public size;
    constructor() public {
        field = array1;
        size = 5;
    }

    uint256 public constant array1 = [1, 2, 3, 4, 5];
}

pragma solidity ^0.8.0;
contract StructuralEqualityDynamicallySizedArrayAssignment_5 {
    struct S {
        bool state;
    }

    function func() public {
        S s = S({ state: true });
    }
}
