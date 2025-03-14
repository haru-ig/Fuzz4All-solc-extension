pragma solidity ^0.8.0;
contract SimpleFallbackCaller {
    function Mutator() public {}

    receive() external payable {
        bool executedFallback = false;
        try Mutator() {
            executedFallback = true;
        } catch Error(string memory) {
            executedFallback = true;
        }
        require(executedFallback);
    }
}
