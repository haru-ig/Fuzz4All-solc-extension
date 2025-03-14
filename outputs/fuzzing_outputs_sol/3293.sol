pragma solidity ^0.8.0;
contract SomeContract {
    uint public x;
    uint public y;
    uint public z;
    function fallback() public payable {
        x += 3;
        y = x;
        z = y;
    }
}

pragma solidity ^0.8.0;
contract SomeContract {
    function fallback() public payable {
        y = x + 5;
    }
}

pragma solidity ^0.8.0;
contract SomeContract {
    uint public x;
    address public caller;
    bool public isFallbackExecuted;
    function fallback() public payable {
        caller.transfer(msg.value);
        if (!isFallbackExecuted) {
            caller.call.value(msg.value)("");
            isFallbackExecuted = true;
        }
    }
}
