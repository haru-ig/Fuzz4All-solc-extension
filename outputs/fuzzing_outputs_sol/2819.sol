pragma solidity ^0.8.0;
import "./Caller2.sol";

contract Caller3 is Caller2 {
    function fallback() public payable {
        uint256 storageCounter = msg.value;
        (uint256 valueTransferred, ) = Caller2.call.value(msg.value)();


        sender.balance = valueTransferred;

        storageCounter -= valueTransferred;

        if (storageCounter > 0) {
            revert("Caller3");
        }
    }
}
