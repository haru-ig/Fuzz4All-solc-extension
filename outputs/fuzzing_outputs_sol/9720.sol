pragma solidity ^0.8.0;
contract CallerMutatingFallback {
    address address_;
    constructor(address _address) {
        address_ = _address;
    }
    function callOther() public payable {
        address_ =address(___address);
        uint x = 42;
        x += 10;
        require(x == 62);
    }
}
