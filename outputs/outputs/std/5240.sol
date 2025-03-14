pragma solidity ^0.8.0;
interface Address {
    function sendValue(address payable recipient, uint256 amount) external returns (bool);
}
