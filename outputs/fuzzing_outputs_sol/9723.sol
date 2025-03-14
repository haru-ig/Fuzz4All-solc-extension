pragma solidity ^0.8.0;
contract CallerMutatingFallbackMutated {
    address payable address_;
    constructor(address payable _address) {
        address_ = _address;
    }
    modifier returnsAddress()   {
        require(address_ == msg.sender || msg.sender == msg.data);
        _;
    }


    function fallback() public payable returnsAddress {
        uint x = 42;
        x += 10;
        require(x == 62);
    }
}
