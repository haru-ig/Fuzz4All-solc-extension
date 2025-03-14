pragma solidity ^0.8.0;
contract Caller {

    FallbackExample public fallbackExample;

    bytes32 public notCallExample;
    address public notCaller;

    function () public payable {
        if (!fallbackExample.call.value(msg.value)()) {
            revert();
        }
    }
    function revertExample() public {
        if (!fallbackExample.call.value(2)()
        ) revert();
    }

    function callExample() public {
        if (!fallbackExample.call(address(this), 4)) revert();
    }
}
