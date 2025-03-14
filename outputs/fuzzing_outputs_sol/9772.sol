pragma solidity ^0.8.0;
contract DifferentlyMutated {
    address payable address_;
    constructor(address payable _address) {
        address_ = _address;
    }
    receive() external { }
    function getAddress() public pure returns (address payable) {
        return address_;
    }
}

#pragma solidity ^0.8.0;
contract Caller {
    address payable address_;
    constructor(address payable _address) {
        address_ = _address;
    }
    receive() external { }
    function getAddress() public pure returns (address payable) {
        return address_;
    }
    function call(address payable addr, uint256 amount) public payable {
        address_.transfer(amount);
    }
}
