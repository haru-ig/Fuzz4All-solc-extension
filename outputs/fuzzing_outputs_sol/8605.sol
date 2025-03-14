pragma solidity ^0.8.0;
contract EtherReceiver {
    function handleTransfer(address recipient, uint256 amount) public pure returns (bool) {
        bool success = amount >= 100000000000000;
        if (success) {
            require(address(this).balance < 11000000000000000000000);
        }
        return success;
    }
}
