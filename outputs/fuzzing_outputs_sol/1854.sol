pragma solidity ^0.8.0;
contract MutatedFallbackCaller {
    uint constant _value = 1;
    uint public balance;
    constructor() {
        balance = 0;
    }
    fallback() external payable {
        require(msg.value == _value);
        balance = balance + 1;
    }
}

pragma solidity ^0.8.0;
contract MutatedFallbackImmutableCaller {
    uint constant _value = 1;
    uint public immutable balance;
    constructor() {
        balance = 0;
    }
    function () external payable {
        require(msg.value == _value);
        balance = balance + 1;
    }
}
