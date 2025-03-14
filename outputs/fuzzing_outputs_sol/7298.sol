pragma solidity ^0.8.0;
contract MutatedExample {
    function payMeEther(uint) external {}
    fallback() external payable {
    }
}
contract WithLowLevelContract {
    function doLowLevelCall(uint amount, address payable to, bytes calldata data) external payable {}
}
