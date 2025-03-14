pragma solidity ^0.8.0;
contract ContractWithFallbackModifier {
    modifier OnlyPayable { require(msg.value > 0); _?; }
    fallback() payable external {}
}
