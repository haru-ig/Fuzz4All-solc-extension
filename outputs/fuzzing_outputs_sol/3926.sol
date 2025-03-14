pragma solidity ^0.8.0;
contract Example11 {
    function getCaller() public view returns (address payable) {

        return address(this);
    }
}
