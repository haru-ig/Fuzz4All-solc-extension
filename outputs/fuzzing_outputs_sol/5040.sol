pragma solidity ^0.8.0;
contract Mutator {
    function mutate() public pure returns(uint256) {
        return type(uint256).max;
    }

    function mutateAndReturn() public pure returns (uint256) {
        return type(uint256).max;
    }
}

pragma solidity ^0.8.0;
contract FallbackMutator is Mutator {
    function mutate() public pure returns(uint256){
        revert ('fallback function is executed');
    }
}
