pragma solidity ^0.8.0;
contract CallerMutatingFallbackMutated {
    address payable address_;

    modifier onlyPayable() {
        require(msg.value > 0, "You have to pay");
        _;
    }

    constructor(address payable _address) {
        address_ = _address;
    }

    function fallback() public onlyPayable {
        uint x = 42;
        x += 10;
        require(x == 62);
    }
}
