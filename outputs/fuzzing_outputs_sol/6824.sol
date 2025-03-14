pragma solidity ^0.8.0;
address ContractAddrA = 0xf769f9A62b72E4853154B8B890472D8f4aA20018;
address ContractAddrB = 0xDEADBEEF000000000000000000000000000000000;
contract ContractA is Solidity {
    constructor() { ContractAddrA.call.value(1 ether)(""); }
}
contract ContractB is ContractA {
    constructor() { ContractAddrB.call.value(1 ether)(""); }
}
