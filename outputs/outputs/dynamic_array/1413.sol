pragma solidity ^0.8.0;
contract SemanticallyEquivalentMutatedDynamicArrayTypeCheck18 {
    uint256[][] public array2 = new uint256[5][];
    uint256[][] public array3;
    uint256[][] public array4;
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalentMutatedDynamicArrayTypeCheck18 {
    bool public check = MutatedSemanticallyEquivalentMutatedDynamicArrayTypeCheck18(this).equals(SemanticallyEquivalentMutatedDynamicArrayTypeCheck18(this));
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalentMutatedDynamicArrayTypeCheck18 {
    address public addr1;
    uint256 public value1;
    uint8 public value2;

    function equals(SemanticallyEquivalentMutatedDynamicArrayTypeCheck18 x) public pure returns(bool) {
        return
            addr1 == x.addr1 ||
            value1 == x.value1 ||
            value2 == x.value2 ||
            (x.array1 == array1 && x.array3 == array3 && x.array4 == array4);
    }
}
