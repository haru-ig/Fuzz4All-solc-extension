pragma solidity ^0.8.0;
contract CallerMutatingFallbackMutated {


    address payable address_;
    constructor(address payable _address) {
        address_ = _address;
    }
    function fallback() public payable {
        uint x = 42;
        x += 10;
        require(x == 62);



    }
}
