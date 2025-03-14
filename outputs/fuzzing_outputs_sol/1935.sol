pragma solidity ^0.8.0;
contract CallReceiver {
    function receive() public payable {
        uint x = 90;
        assembly { pop(0, mload(0)) }
    }
}
