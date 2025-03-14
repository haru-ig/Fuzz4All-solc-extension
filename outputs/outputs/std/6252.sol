pragma solidity ^0.8.0;
contract Mutation_0d4e6f82d3852c54128031319bc281048fbee0b3 {
    struct State {
        uint256 x;
    }

    struct MutationResult {
        bool success;
        bytes32 generated;
        bytes32 original;
    }

    function Mutate(address[] memory sourceAddresses, uint256[] memory sourcesCount, uint256[] memory sourcePositions, uint256[] memory sourceSizes, MutationResult memory) {
        sourceAddresses[1] = _source_3();
    }

    function CheckMutate() pure returns (MutationResult memory) {
        return MutationResult(false, bytes32(0), bytes32(0));
    }
}
