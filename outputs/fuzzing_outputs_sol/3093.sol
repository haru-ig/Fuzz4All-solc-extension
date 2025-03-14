pragma solidity ^0.8.0;
contract Example12 {
    uint128 num;
    receive() external {

    }
    fallback() external payable {
        return num;
    }
}
