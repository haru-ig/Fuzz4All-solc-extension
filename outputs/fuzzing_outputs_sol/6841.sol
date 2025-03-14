pragma solidity ^0.8.0;
contract FallbackReceiver {
    uint counter;
    uint value;
    address payable fallback;
    receive() external payable {}
    fallback() external payable payable {
        counter = 2;
    }
}

pragma solidity ^0.8.0;
contract Fail {
    uint private _counter;
    address private _fallback;
    constructor(address payable _fallback) {
        _fallback;
    }
    receive() external {}
    fallback() external {
        _counter = 2;
    }
}
