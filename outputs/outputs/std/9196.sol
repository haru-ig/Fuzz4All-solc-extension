pragma solidity ^0.8.0;
contract MutatingContract {
    function incArray() public view returns (uint256) {
        return array() + 1;
    }
}
