pragma solidity ^0.8.0;
contract Caller {
    function lowLevel() internal returns (uint) {
        this.lowLevel();
        return 0;
    }
}
