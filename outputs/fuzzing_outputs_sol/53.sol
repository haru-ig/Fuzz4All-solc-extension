pragma solidity ^0.8.0;
contract CallerFallbackFunction {
    function fallback(uint256 _x) external payable {
        x = _x;
    }
    uint256 x;
}
contract InitialCaller2 {
    function fallback(uint256 _x) external payable {
        x = _x;
    }
}
contract SecondCaller2 {
    function fallback(uint256 _x) external payable {
        x = _x;
    }
}
