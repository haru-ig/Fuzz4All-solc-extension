pragma solidity ^0.8.0;
abstract contract Proxy { constructor () { } }
contract ContractName { }
contract TestContractName { ContractName internal c; address f = (address(proxy((address(c))))); }
