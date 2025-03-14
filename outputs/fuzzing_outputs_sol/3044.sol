pragma solidity ^0.8.0;
contract FallbackReceiver {
    bool valid = true;
    receive() external payable {
        if (valid) {

            revert("Receiver threw exception!");
        }
    }
}

contract Example3 {
    bool valid = false;
    function validReceiverFallback() public payable {
        if (valid) {
            valid = false;
            throw "Invalid fallback function";
        }
    }
}
