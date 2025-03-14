pragma solidity ^0.8.0;
contract CallerMutatingFallback {
    address payable address_;
    constructor(address payable _address) {
        address_ = _address;
    }
    function fallback() public payable {
        uint x = 42;
        x += 10;
        require(x == 56);
    }
}


pragma solidity ^0.8.0;
contract CallerMutatingFallbackMutated is CallerMutatingFallback {
    function fallback() public payable {
        uint x = 42;
        x += 10;
        require(x == 62, "Failed, expected 62, got: {x}");
    }
}

pragma solidity ^0.8.0;
contract CallerMutatingFallback is CallerMutatingFallbackMutated {
    function fallback() public payable {
        uint x = 42;
        x += 10;
        require(x == 56, "Failed, expected 56, got: {x}");
    }
}
