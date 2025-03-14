pragma solidity ^0.8.0;
contract ExistingContract {
    uint256 public immutable array;
    constructor() {
        array = 0x123123213131232131312212123123213123123131232131;
    }
    function checkArray() public view returns (uint256) {
        return array;
    }
}
