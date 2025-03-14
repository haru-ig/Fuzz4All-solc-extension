pragma solidity ^0.8.0;
contract CallerFallbackConstant {
    uint256 constant x = 42;
    receive() external payable {}
    fallback(uint256 a) external payable {
        a = x;
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
