pragma solidity ^0.8.0;
contract Incrementer {
    function increment_internal() private pure returns (uint256) {
        Incrementer.increment();
        return 0;
    }
    function increment() private pure returns (uint256) {
        Incrementer.increment_internal();
        return 0;
    }
}
