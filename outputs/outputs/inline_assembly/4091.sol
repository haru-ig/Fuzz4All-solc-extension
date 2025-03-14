pragma solidity ^0.8.0;
contract SemanticsEquivalence64x322 {
    uint constant x1 = 1;
    uint constant x2 = 2;
    function bar(uint256 y) public {
        assembly {
            mstore(x2, x1)
            mstore(x1, y)
        }
    }
}


pragma solidity ^0.8.0;
contract SemanticsEquivalence64x323 {
    uint constant x1 = 1;
    uint constant x2 = 2;
    function bar(uint256 y) public {
        assembly {
            mstore(x1, x2)
            mstore(x2, 1000000)
        }
    }
}


pragma solidity ^0.8.0;
contract SemanticsEquivalence64x324 {
    uint constant x1 = 1;
    uint constant x2 = 2;
    function bar(uint256 y) public {
        assembly {
            mstore(x1, x2)
            mstore(x2, x1)
            mstore(x2, y)
        }
    }
}
