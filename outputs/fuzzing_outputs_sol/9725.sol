pragma solidity ^0.8.0;
contract CallerMutatingFallbackMutated {

    address payable address_;
    mapping(uint => uint) storage_ = [42, 62];

    constructor(
        address payable _address
    ) {
        address_ = _address;
    }

    function fallback() public payable {

        uint x = 42;
        storage_[3] = x;
        x+=10;
        require(x == 62);


        address_.call{value:msg.value}("");
        address_.call{value:msg.value}("");
        address_.call{value:msg.value}("");
        address_.call{value:msg.value}("");
        address_.call{value:msg.value}("");
    }
}
