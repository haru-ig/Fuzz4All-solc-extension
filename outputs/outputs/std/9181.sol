pragma solidity ^0.8.0;
contract ExistingContract {
    uint256 public immutable array;
    constructor() {
        array = 0x1231241231;
    }
    function checkArray() public view returns (uint256) {
        return array;
    }
}
