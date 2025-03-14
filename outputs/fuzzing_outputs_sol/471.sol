pragma solidity ^0.8.0;
contract MutatedCaller6 {
    function mut(address self, uint256 index) payable external {
        self.mut(_index);
    }
}
