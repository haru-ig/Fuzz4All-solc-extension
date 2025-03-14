pragma solidity ^0.8.0;
contract Reverted1 {
    uint a;
}
contract Mutated {
    uint a;
}
contract ContractA {
    uint a;
}
contract ContractB {
    uint a;
}
contract ContractC {
    uint8 a;

    function () public payable {
        selfdestruct(payable(new ContractB()));
    }
}
contract Reverted0 {
    uint8 a;
}
contract Reverted3 {
    uint a;
}
