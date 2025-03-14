pragma solidity ^0.8.0;
contract CallerMutatingFallbackMutatedModified {
    address payable address_;
    constructor(address payable _address) {
        address_ = _address;
    }

    receive() external payable {}

    receive() public payable {

    }
}

pragma solidity ^0.8.0;
contract CallerMutatingFallbackMutatedModified {
    address payable address_;
    address payable fallbackAddress_;
    constructor(address payable _address) {
        address_ = _address;
    }
    function receive() external payable {}
    receive() public payable {}
    function fallback() public payable {}
}
