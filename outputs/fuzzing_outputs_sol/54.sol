pragma solidity ^0.8.0;
contract SecondCallerFallbackFunction {
    uint256 x;
    receive() external payable { x = 1; }
    fallback() external payable { x = 2; }
}
contract InitialCallerFallbackFunction {
    uint256 x;
    receive() external payable { x = 1; }
    fallback() external payable { x = 2; }
}
contract CallerFallbackFunction {
    uint256 x;
    receive() external payable { x = 1; }
    fallback() external payable { x = 2; }
}




contract CallerFallbackFunction {
    uint256 x;
    receive() external { x = 1; }
    fallback() external payable { x = 2; }
}
