pragma solidity ^0.8.0;
contract Test30002 is Test30001 {
    address payable private payee;
    bytes32 public hash;
    uint256 public s;
    constructor (address payable _adr, address payable _payee) public {
        emit Log();
        adr = _adr;
        payee = _payee;
    }
    event Log ();
}
