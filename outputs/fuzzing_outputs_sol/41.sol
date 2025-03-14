pragma solidity ^0.8.0;
contract CallerFallbackSemantic {
    uint256 constant x = 42;
    receive() external {
        x = 1;
    }
    fallback() external {
        x = 1;
    }
}
contract InitialCaller {
    uint256 x;
    receive() external payable {
        x = 1;
    }
}
contract SecondCaller {
    uint256 x;
    receive() external payable {
        x = 1;
    }
}
