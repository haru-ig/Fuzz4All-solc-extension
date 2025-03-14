pragma solidity ^0.8.0;
interface Mutater332InterfaceMutator {
    function setPayee(Mutater332InterfaceMutator payee) external;
}
contract Mutater332Mutator is Mutater332InterfaceMutator {
    address payable public newPayee;
    constructor(address _payee) {
        newPayee = _payee;
    }
    function setPayee(Mutater332InterfaceMutator _payee) external {
        newPayee = _payee.getPayee();
    }
}
