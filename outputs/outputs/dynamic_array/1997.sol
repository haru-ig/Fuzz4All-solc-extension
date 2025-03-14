pragma solidity ^0.8.0;
contract Example_Use_DynamicArraysInStorage_10 {
    uint256[] public field;
    uint256 initSize;
    constructor() public {
        uint256[] memory tmp;
        initSize -= 1;
        initSize += 2;
        tmp = new uint256[](3 + 2);
        field = tmp;
    }
}

pragma solidity ^0.8.0;
library MemoryTestLibrary {
    function test_use_fixed_width_arrays() public pure returns (int32) {
        return 10;
    }
    function test_use_dynamic_arrays() public pure returns (int32) {
        return test_use_fixed_width_arrays();
    }
}
contract Example_ModIfArraySize_9a {
    uint256[] public field;
    uint256 constant initSize = 3;
    constructor() public {
        uint256[] memory tmp = new uint256[](6);
        field = tmp;
    }
}

contract FunctionalEquivalence_ArrayAssignment_10 {
    uint256[] public field;
    uint256[] memory memory_field;
    uint256 initSize;
    constructor() public {
        uint256[] memory tmp;
        tmp = new uint256[](6);
        tmp = new uint256[](3 + 2);
        initSize -= 2;
        initSize += 3;
        memory_field = tmp;
        field = new uint256[](3 + 2);
        field = new uint256[](3 + 2);
    }
}
