pragma solidity ^0.8.0;
contract MutatedCaller {
    function highLevel() public nonpayable returns (uint) {
        this.highLevel();
        return 0;
    }
}
