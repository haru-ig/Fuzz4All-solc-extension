pragma solidity ^0.8.0;
contract SecondCaller3 {
    uint256 x;
    receive() external payable { x = 1; }
    fallback(uint256 a) {
        x = a;
    }
}
contract FirstCaller {
    uint256 x;
    receive() external { x = 1; }
    fallback() external payable { x = 5; }
    receive() external payable { x = 500; }
}
