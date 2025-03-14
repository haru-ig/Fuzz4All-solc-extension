pragma solidity ^0.8.0;
contract Mutator {
    bytes32 public constant value = keccak256("The truth is something new");

    function mutate() returns (bytes32) {
        bytes memory input = new bytes(10);
        input[15:] = value;
        return keccak256(input);
    }
}

pragma solidity ^0.8.0;
contract LowLevelMutator {
    bytes32 public constant value = keccak256("The truth is something new");

    function mutate() private returns (bytes32) {
        input();
    }

    function input() pure internal {
        return value;
    }
}
