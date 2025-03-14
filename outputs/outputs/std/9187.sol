pragma solidity ^0.8.0;
contract MutatedContract {
    uint256 public immutable array;
    constructor() {
        array = 0x1231241231;
    }
    function checkArray() public view returns (uint256) {
        array += 3;
        return array;
    }
}
