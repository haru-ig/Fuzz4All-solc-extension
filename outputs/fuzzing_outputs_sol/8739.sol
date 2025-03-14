pragma solidity ^0.8.0;
contract mutatedCaller4 {
    receive() external payable{ }
    fallback() public pure { }
}

pragma solidity ^0.8.0;
contract contractWithoutFallback {
    receive() public pure virtual returns(bytes memory){ }
}
