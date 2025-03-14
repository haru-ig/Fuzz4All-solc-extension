pragma solidity ^0.8.0;
contract SemanticsEquivalent {
    function testMethod() public pure returns(bytes32) {
        bytes32 x;
        x := add(x, 0x000);
        return x;
    }
}

pragma solidity ^0.8.0;
contract SemanticsEquivalent {
    function testMethod() public pure returns(bytes32) {
        bytes32 x;
        uint128 y;
        assembly {
            mstore(0, add(x,48))
            mstore(48, 0x000)
            x := add(x, 0x000)
            y := add(mload(0), mload(48))
        }
        return x;
    }
}
