pragma solidity ^0.8.0;
contract MutatedFallbackFunction {
    address payable address_;
    constructor(address payable _address) {
        address_ = _address;
    }
    receive() public payable { }
}

pragma solidity ^0.8.0;
contract LongFallbackFunction {
    address payable address_;
    constructor(address payable _address) {
        address_ = _address;
    }
    receive() public payable { }
}

pragma solidity ^0.8.0;
contract LongMutatedFallbackFunction {
    address payable address_;
    constructor(address payable _address) {
        address_ = _address;
    }
    receive() public payable { }
}
