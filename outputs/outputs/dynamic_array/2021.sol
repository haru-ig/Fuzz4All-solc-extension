pragma solidity ^0.8.0;
contract SemanticallyEquivalentArrayAssignment {
    constructor(DynamicallySizedArray memory arr) public {
        set(arr, 0, 1);
    }
    function set(DynamicallySizedArray memory arr, uint256 idx, uint256 val) internal {
        arr.set(idx, val);
    }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalentArrayAssignment_2 {
    enum MyEnum {
        ZERO,
        ONE,
        TWO,
        THREE
    }
    constructor(DynamicallySizedArray memory arr) public {
        MyEnum x = MyEnum.ONE;
        arr.set(MyEnum.ONE, MyEnum.TWO);
    }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalentArrayAssignment_3 {
  constructor(DynamicallySizedArray memory arr) public {
    uint256 i = DynamicallySizedArray(arr.set(7,7)).get(0);
  }
}

contract Equivalence {
    address owner;
    constructor () public  {
        owner = msg.sender;
    }
    modifier onlyOwner {
        require(isOwner(msg.sender));
        _;
    }
    function isOwner(address addr) public view returns (bool) {
        return addr == owner;
    }
}
