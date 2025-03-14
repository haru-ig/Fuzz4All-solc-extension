pragma solidity ^0.8.0;
contract NoFallback2 {
    receive() external {
        require(address(this).balance >= paid);
    }
    uint paid;
}
