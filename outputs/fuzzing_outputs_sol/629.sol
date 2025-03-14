pragma solidity ^0.8.0;
contract ProxyFactory {

        constructor(string memory _contractName, bytes payable _implementation) {
            contractName = _contractName;
            implementation = _implementation;
        }
}
