pragma solidity ^0.8.0;
contract SemanticsEquivalence64x32 {
    uint constant x1 = 1;
    uint constant x2 = 2;
    function bar(uint256 y) public {
        assembly {
            mstore16(add(x1, 0x40), mload16(x2))
            mstore16(add(x2, 0x40), y)
        }
    }
}

pragma solidity ^0.8.0;
contract SemanticsEquivalence64x32 {
    uint constant x1 = 1;
    uint constant x2 = 2;
    function bar(uint256 y) public {
        assembly {
            mstore32(add(x1, 0x40), mload32(x2))
            mstore32(add(x2, 0x40), y)
        }
    }
}

pragma solidity ^0.8.0;
contract SemanticsEquivalence64x32 {
    uint constant x1 = 1;
    uint constant x2 = 2;
    function bar(uint256 y) public {
        assembly {
            calldatacopy(0x0, add(x1, 0x40), 0x8)
            mstore32(add(x1, 0x40), mload16(add(x1, 0x40)))
            calldatacopy(0x0, add(x2, 0x40), 0x8)
            mstore32(add(x2, 0x40), mload16(add(x2, 0x40)))
            mstore32(0x0, mload32(add(x2, 0x40)))
            mstore32(0x0, mload32(add(x1, 0x40)))
        }
    }
}

pragma solidity ^0.8.0;
contract SemanticsEquivalence64x32 {
    uint constant x = 1;
    uint constant y1 = 2;
    function bar(uint256 z) public {
        assembly {
            m
