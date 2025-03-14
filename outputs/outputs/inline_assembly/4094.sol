pragma solidity ^0.8.0;
contract SemanticsEquivalence64x32 {
    uint constant x1 = 2;
    uint constant x2 = 5;

    function bar(uint256 y) public {
        assembly {
            mstore(x1, x2)
            mstore(x2, y)
        }
    }
}

pragma solidity ^0.8.0;
contract SemanticsEquivalence64x32 {
    uint constant x1 = 2;
    uint constant x2 = 7;
    uint constant x3 = 2;

    function bar(uint256 y) public {
        assembly {
            mstore(x1, x2)
            mstore(x2, 0x800000000000000000000000000000000000000000000000000000000000000)
            mstore(x3, x2)
            mstore(x2, 0x80000000000000000000000000000000000000000000000000000000000000)
        }
    }
}

pragma solidity ^0.8.0;
contract SemanticsEquivalence64x32 {
    uint constant x1 = 2;
    uint constant x2 = 64 * 32;
    uint constant x3 = 1;

    address addr1;
    address addr2;

    constructor() payable {
        addr1 = (uint128(block.difficulty).sub(block.timestamp).mul(0).div(0x10000000000000000)) / 0x100;
    }

    function () external {
        uint256 x1_copy = x1;
        x2 = 196608;
        uint256 y;
        uint256 z = 325;

        assembly {
            y := mload(x1_copy)
            mstore(x1_copy, 0)
            x3 =
