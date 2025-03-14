pragma solidity ^0.8.0;
contract Test88b {
    uint256 internal test = test88b();
}
library Address {

    function isContract(address account) internal view returns (bool) {
        uint256 size;
        assembly { size := extcodesize(account) }
        return size > 0;
    }
}
library Uint256 {
    constructor () internal { }
    function toUint(uint256 from) internal pure returns (uint256) {
        return from;
    }
}
