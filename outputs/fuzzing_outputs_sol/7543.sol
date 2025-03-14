pragma solidity ^0.8.0;
contract OriginalMutatedFallbackModifier {
    uint256 INITIAL_VALUE = 23;
    uint256 storedNumber = 17;
    constructor() {
    }
    function setZ() public payable {
        storedNumber = msg.value;
    }
}

pragma solidity ^0.8.0;
contract MutatedFallbackModifierCaller {
    address public caller;
    constructor(address _caller) {
        caller = _caller;
    }
    function setZ() public {
        caller.transfer(msg.balance);
    }
}

pragma solidity ^0.8.0;
contract OriginalMutatedFallbackModifierCaller {
    address public caller;
    constructor() {
        caller = msg.sender;
    }
    function setZ() public payable {
        caller.transfer(msg.value);
    }
}

pragma solidity ^0.8.0;
contract MutatedFallbackModifierCallerCaller {
    address public caller;
    constructor(address _caller) {
        caller = _caller;
    }
    function setZ() public {
        caller.call(abi.encodeWithSignature("setZ()"));
    }
}

pragma solidity ^0.8.0;
contract OriginalMutatedFallbackModifierCallerCaller {
    address public caller;
    constructor() {
        caller = msg.sender;
    }
    function setZ() public payable {
        caller.call(abi.encodeWithSignature("setZ()"));
    }
}
