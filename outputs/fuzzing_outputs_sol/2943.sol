pragma solidity ^0.8.0;
contract Mutator {
    uint256 public data;
    function mutate(uint256 input, uint256 output) public view {
        data = input;
    }
    function mutated(uint256 input, uint256 output) public view returns (bool) {
        return data == input;
    }
    fallback() external {
        emit MutatorFallback();
    }
    event MutatorFallback();
}

pragma solidity ^0.8.0;
contract FallbackMutator is Mutator {
}

pragma solidity ^0.8.0;
contract FallbackCaller {
    function pay_fallback() external payable {}
    function get_fallback_data() public view returns (uint256) {
        return 0;
    }
    function fallback() external {
        emit FallbackCallerFallback();
    }
    event FallbackCallerFallback();
}
