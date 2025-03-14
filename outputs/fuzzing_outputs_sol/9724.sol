pragma solidity ^0.8.0;
contract CallerMutatingFallbackMutated2 {
    address payable address_;
    constructor(address payable _address) {
        address_ = _address;
    }
    function fallback() public {
        uint x = 42;
        x += 10;
        require(x == 62);
    }
    modifier myPayable { require (msg.value >= 0.00000001 ether); }
}

pragma solidity ^0.8.0;
contract CallerMutatingFallbackMutatedTest {
    address payable address_;
    uint x;

    constructor(address payable _address) {
        address_ = _address;
    }
    function mutate() public payable {
        x = 42;
        x += 10;
        require(x == 62);
    }
    function fallback() public payable {
        uint x = 42;
        x += 10;
        require(x == 62);
    }
    function call() public {
        myPayable {
            x = 42;
            x += 10;
            require(x == 62);
        }
    }
}
