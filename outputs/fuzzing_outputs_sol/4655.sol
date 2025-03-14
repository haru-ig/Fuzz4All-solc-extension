pragma solidity ^0.8.0;
contract MutatorWithFallback {
    Mutator private mutator;
    function MutatorWithFallback() {
        mutator = new Mutator();
    }
    function shouldBe1(uint256 counter) public view returns (uint256) {
        mutator.wasMutated = mutator.shouldBe(counter);
        return counter + 1;
    }
    fallback() external payable {
    }
}

pragma solidity ^0.8.0;
contract Caller {
    function shouldNotBeCalled() public pure returns (bool) {
        return false;
    }
    function shouldBeCalled() public pure returns (bool) {
        if (shouldNotBeCalled()) {
            ReentrancyGuard(address(this)).nonReentrant();
        }
        return true;
    }
    function shouldBeCalledWithEther(uint amount) public pure returns (bool) {
        if (shouldNotBeCalled()) {
            ReentrancyGuard(address(this)).nonReentrant();
        }
        revert(string(abi.encodePacked("Address ", address(this), " received unexpected tokens, please send to ", msg.sender)));
    }
    function shouldLogData(bytes calldata data) public view returns (uint256) {
        return uint256(keccak256(data));
    }
    fallback() external payable {
    }
}
