pragma solidity ^0.8.0;
contract Escrow
{
   bytes32 constant Ether = "0x00";
    bytes32 private _value;
   fallback() external payable {
    _value = Ether;
    emit EtherReceived(_value);
   }
   receive() external payable { }
}
