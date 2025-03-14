pragma solidity ^0.8.0;
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_12 {
    uint256[] public field;
    uint256 public size;
    constructor() public {
        uint256[] memory tmp;
        size -= 2;
        tmp[1] = 5;
        size = 5;
        size++;
        size -= 5;
        size -= 3;
        size += 5;
        size += 2;
        size += 2;
    }
}
pragma solidity ^0.8.0;
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_13 {
    uint256[] public field;
    uint256 public size;
    constructor() public {
        uint256[] memory tmp;
        size = 5;
        size -= 1;
        field = tmp;
    }
}
pragma solidity ^0.8.0;
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_14 {
    uint256[] public field;
    uint256 public size;
    constructor() public {
        uint256[] memory tmp;
        size += 1;
        size += 1;
        size += 5;
    }
}
pragma solidity ^0.8.0;
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_15 {
    uint256[11] public a;
    uint256 public sz;
    uint public x;
    constructor() public {
        x -= 5;
        a = new uint256[3];
        a[1] = 2;
        x = 0;
        x = 0;
    }
    function setField(uint256[] memory x) public {
        size -= 1;
        this.a = x;
        size += 1;
        size += 1;
        sz = 11;
    }
}
pragma solidity ^0.8.0;
