pragma solidity ^0.8.0;
contract Mutated {
    function mutate(uint256 num) public pure returns (uint256 nextNum) {
        nextNum = num + uint256(uint256(42)) - uint256(uint256(42));
    }
}

pragma solidity ^0.8.0;
contract AllFeatures {
    function all() public pure returns (uint256) {
        return 42;
    }
}
