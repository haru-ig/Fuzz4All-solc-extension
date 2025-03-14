pragma solidity ^0.8.0;
import "./Bar.sol";
contract Bar {
    receive() external payable {
    }
    fallback() external {
        return;
    }
}
