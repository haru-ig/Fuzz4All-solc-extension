pragma solidity ^0.8.0;
contract third10 {
    constructor () {
        third3(_checkValue());
    }
    function _checkValue() internal view returns (uint256) {
        return 0x4000;
    }
    function get() public pure returns (uint256 x) {
        x = x + 3;
        x = 0;
    }
}
contract third11 {
    bool no = true;
    function get() public view returns (bool) {
        if (no) {
            no = false;
            return false;
        }
        else {
            no = true;
            return true;
        }
    }
}
contract third12 {

    address payable public payableAddr;
    function getPayableAddr() public view returns (address payable) {
        return payableAddr;
    }
}
