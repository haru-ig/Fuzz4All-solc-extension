pragma solidity ^0.8.0;
contract InitialCallerReceiver {
    uint256 constant x = 42;
    receive() external payable {}
}
contract SecondCallerReceiver {
    uint256 constant x = 42;
    receive() external payable {}
}
contract CallerFallbackPayable {
    uint256 constant x = 42;
    receive() external payable {}
    fallback() external payable {}
}

pragma solidity ^0.8.0;
contract Contracts {
    bool boolValue;
    bool payable boolpayableValue;
    modifier ifTrue(bool _test) {
        if (_test) {
            _;
        }
    }
    modifier elseIfFalse(bool _test) {
        if (!_test) {
            _;
        }
    }
    modifier ifTrue2(bool _testA, bool _testB) {
        if (_testA && _testB) {
            _;
        }
    }
    modifier elseIfFalse2(bool _testA, bool _testB) {
        if (!_testA &&!_testB) {
            _;
        }
    }
    function payableFallback(uint256 arg) external payable {
        boolValue = arg > 0;
        boolpayableValue = arg > 0;
        fallback();
    }
    function fallbackIfFalse(uint256 arg) external ifTrue(arg > 0) {
        uint b = arg;
        fallback();
    }
    function fallbackIfFalse2(uint256 arg) external ifTrue2(arg > 00, arg == 01) {
        uint b = arg;
        fallback();
    }
    function fallbackIfFalse3(uint256 arg) external ifTrue(arg < 00) {
        uint8 b = arg;
        fallback();
    }
    function fallbackIfFalse4(uint256 arg) external ifTrue(arg == 01, arg > 24) {
        uint24 b = arg;
        fallback();
    }
    function fallbackIfFalse5(uint256 arg) external ifTrue(arg == 24, arg < 32) {
        uint24 b = arg;
        fallback();
    }
    function noFallback() external {
        fallback();
    }
    function fallbackWithStorage() internal {
        boolValue = true;
        boolpayableValue = true;
        fallback();
    }
    function fallbackWithStorage2() internal {
        boolValue = true;
        boolpayableValue = false;
        fallback();
    }
}


pragma solidity ^
