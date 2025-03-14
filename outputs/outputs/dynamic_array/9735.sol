pragma solidity ^0.8.0;
contract BuggySemanticallyDistinct {
    SemanticallyDistinct public s;
    semanticallyDistinct;
}
contract BuggyModifies {
    SemanticallyDistinct public s;
    uint8 x;
    uint16 public semanticallyDistinct = 0;
    SemanticallyDistinct public semanticallyChangesSemanticallyDistinct;

    function modifiesSemanticallyDistinct() public {
        s.semanticallyDistinct = s.semanticallyDistinct + x;
        s.semanticallyChangesSemanticallyDistinct = s.semanticallyDistinct;
    }
}

pragma solidity ^0.8.0;
contract DynamicArrayAssign {
    uint[] public dynamicLengthArray;


    function assignArray(uint[] memory array) public {
        dynamicLengthArray = array;
    }
}
