pragma solidity ^0.8.0;
contract Equivalence_DynamicallySizedArrayAssignment_2 {
    uint256[] nonmutatedArray;

    constructor() public {
        nonmutatedArray[0] = 0;
    }
}

pragma solidity ^0.8.0;
contract Equivalence_DynamicallySizedArrayAssignment_3 {
    uint256[] nonmutatedArray;
    uint256[] staticArray;

    constructor() public {
        nonmutatedArray[0] = 0;
    }
}

pragma solidity ^0.8.0;
contract Equivalence_DynamicallySizedArrayAssignment_4 {
    uint256[] nonmutatedArray;
    uint256[] staticArray;
    uint256[] dynamicArray;

    constructor() public {
        nonmutatedArray[0] = 0;
        dynamicArray[0] = 0;
    }
}

pragma solidity ^0.8.0;
contract Equivalence_DynamicallySizedArrayAssignment_5 {
    uint256[] nonmutatedArray;
    uint256[] staticArray;
    uint256[] dynamicArray;
    address addressValue;

    constructor(uint256 _arrSize) public {
        nonmutatedArray[0] = 0;
        dynamicArray[0] = 0;
    }
}

pragma solidity ^0.8.0;
contract Equivalence_DynamicallySizedArrayAssignment_6 {
    uint256[] nonmutatedArray;
    uint256[] staticArray;
    uint256[] dynamicArray;
    address[] addressArray;

    constructor(uint256 _arrSize) public {
        nonmutatedArray[0] = 0;
        dynamicArray[0] = 0;
    }
}


pragma solidity ^0.8.0;
contract DynamicArrayAssignment_
