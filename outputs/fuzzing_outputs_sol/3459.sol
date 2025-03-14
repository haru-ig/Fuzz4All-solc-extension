pragma solidity ^0.8.0;
contract LowLevelCaller {
    address payable public account;
    address public contractAddress;

    event CallEvent(address contractAddress, address payable account, uint256 amount);

    fallback() public payable {
        uint256 amount = msg.value;
        contractAddress.delegatecall{value: amount}(msg.data);
        emit CallEvent(contractAddress, account, amount);
    }
}
