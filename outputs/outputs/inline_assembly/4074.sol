pragma solidity ^0.8.0;
contract SemanticsEquivalence25x1 {
    uint constant x1 = 1;
    uint constant x2 = 2;
    function bar() public pure {
        uint r = x2 + x2;
        mstore(add(x1, 0x20), r)
        mstore(add(x2, 0x20), r)
    }
}

pragma solidity ^0.8.0;
contract SemanticsEquivalence2 {
    function bar() public pure {
        uint x = uint160((mload(0x404024) + mload(0x404020)));
    }

    function foo() public view returns (uint) {
        return bar();
    }
}
