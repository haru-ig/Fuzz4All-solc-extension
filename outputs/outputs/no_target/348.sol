pragma solidity ^0.8.0;
contract Semantics {
    uint public value = 0;

    function increment() public {
        value++;
    }
}

pragma solidity ^0.8.0;
contract Semantics {
    uint private value = 0;

    function addExplicit() public pure returns (uint256) {
        return value++;
    }

    function multiplyExplicit() public pure returns (uint256) {
        return value *= 18;
    }
}
