pragma solidity ^0.8.0;

contract DeeperCaller{
    address payable address_;
    constructor(address payable _address) {
        address_ = _address;
    }
    fallback() external payable { address_.transfer(msg.value); }
}

pragma solidity ^0.8.0;

contract LowLevelCaller{
    address payable address_;
    constructor(address payable _address) {
        address_ = _address;
    }
    fallback() external { address_.transfer(address_.balance); }
}
