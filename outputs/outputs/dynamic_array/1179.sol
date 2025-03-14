pragma solidity ^0.8.0;
contract SemanticIndependenceAndDynamicArray {
    mapping(address => uint256) private accountToValue;
    function getAccountValue(address addr) pure public returns (uint256) {
        require(addr!= address(0), 'Address must valid');
        return accountToValue[addr];
    }
    function setAccountValue(address addr, uint256 value) pure {
        require(addr!= address(0), 'Address must valid');
        accountToValue[addr] = value;
    }
}
