pragma solidity ^0.8.0;


fallback() external payable {
    require(msg.value >= 5000000000000000000);
}
