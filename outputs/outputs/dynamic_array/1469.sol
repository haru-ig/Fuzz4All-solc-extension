pragma solidity ^0.8.0;
contract SemanticsEquivalentDynamicArrayTypeCheck23 {
    uint256[2][3][4][][][] private array3;
    function MutatedFunction() public {
        for (uint k = 0; k < 2; k++) {
            for (uint j = 0; j < 3; j++) {
                for (uint i = 0; i < 10; i++) {
                    array3.push(new uint256[2][3][4][][](i));
                }
            }
        }
    }
}


pragma solidity ^0.8.0;
contract SemanticsEquivalentInvariantCheck {
    uint[] private array;
    function MutatedFunction() public {
        array[0] = 9;
        assert(array[0] == 9);
    }
}

pragma solidity ^0.8.0;
contract SemanticsEquivalentInvariantCheck2 {
    uint[] private array;

    function MutatedFunction() public {
        return array[0];
    }
}

pragma solidity ^0.8.0;
contract SemanticsEquivalentInvariantCheck3 {
    uint[2] private array;
    function MutatedFunction() public {
        array[0] = 9;
        assert(array == [9,9]);
    }
}
