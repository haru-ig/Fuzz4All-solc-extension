pragma solidity ^0.8.0;
contract C {
    uint private x;
    fallback() external payable {
        x++;
    }
}
