pragma solidity ^0.8.0;
contract Modifications {
    constructor() {
        uint _value = 2;
        if (1 + _value < 3) {
            __revert();
        } else {
            __revertNoGasCost();
        }
    }
}

pragma solidity ^0.8.0;
contract MaliciousReplacement {

    constructor() {}

    function __revert() public {
        throw;
    }

    function __revertNoGasCost() public nonReentrant {
        uint _value = 2;
        require(1 + _value > 3);
    }
}

pragma solidity ^0.8.0;
contract Reverted {

    uint constant _value = 2;

    function __revert() public payable {
        uint _txValue = msg.value;
        require(msg.value == _value);
    }

    function __revertNoGasCost() public nonReentrant payable {
        require(msg.value + 1 == _value + 1);
    }
}

pragma solidity ^0.8.0;
contract FallbackExample {
    uint constant _value = 2;
    uint public balance;
    uint public constant _gasPrice = 500;
    function() public {
        balance += _value;
    }
    receive () external payable {
        balance += _value;
    }
}
contract FailSafeFallbackExample {
    uint constant _value = 2;
    uint public balance;
    uint public constant _gasPrice = 500;
    function __revert() public {
        require(balance > 0);
        require(msg.value == _value);
        return;
    }
    function __revertNoGasCost() public nonReentrant {
        require(balance > 0);
        require(msg.value + 1 == _value + 1);
        return;
    }
}
contract ReturnExample {
    function () public payable payableNonReentrant {
        __revertNoGasCost();
    }
}
contract EmptyReturnExample {
    function () public payableNonReentrant returns () {
        __revertNoGasCost();
    }
}
contract ReturnExample2 {
    function () public returns (uint) {
        __revertNoGasCost();
        return _value;
    }
}
contract EmptyReturnExample2 {
    function () public returns (uint) {
        __revertNoGasCost();
        return _value;
    }
}
contract ReturnExample3 {
    function () public returns (uint) {
        __revertNoGasCost();
        return _value;
    }

    function emptyReturn() returns () {}
}
contract EmptyReturnExample3 {
    function () public returns (uint) {
        __revertNo
