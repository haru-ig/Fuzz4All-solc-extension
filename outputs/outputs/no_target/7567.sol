pragma solidity ^0.8.0;
contract ContractWithNewModifier {
function generate()public view returns(address){address caller;assembly {caller := getCaller()}}}
