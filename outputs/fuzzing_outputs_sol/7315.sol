pragma solidity ^0.8.0;
contract MutatedLowLevelContract {
    function doLowLevelCall(uint amount, address to, bytes memory data) external pure {

        selfdestruct(to);
    }
}
