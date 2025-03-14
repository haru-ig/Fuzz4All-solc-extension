pragma solidity ^0.8.0;
contract CallerWithFallbackTest {
    address payable public test;
    constructor() {
        test = payable(msg.sender);
    }
    receive() external payable {}
}
contract Caller {
    string public data = "data";
    address payable test;

    constructor() {
        test = payable(msg.sender);
    }

    receive() external payable {}

    fallback(bytes memory _data) external payable {
        data = string(_data);
    }

    function fallback() external payable {
        test.transfer(msg.value);
    }
}
