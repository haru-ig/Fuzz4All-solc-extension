pragma solidity ^0.8.0;
contract MutatedExample {
    function payMeEther(uint) external {}
    receive() external payable {}
}
contract WithLowLevelContract {
    function doLowLevelCall(uint amount, address payable to, bytes calldata data) external payable {}
}

pragma solidity ^0.8.0;
contract WithFallbackFunction {
    uint fallback(uint) public pure {
    }
}
