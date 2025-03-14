pragma solidity ^0.8.0;
contract SimpleCaller {
    receive() external payable {}
    fallback() external payable {}
}
