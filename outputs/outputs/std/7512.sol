pragma solidity ^0.8.0;
contract WorstCase2 {

    let x = 1;
    function worstCase0() public pure returns (uint256) {
        uint z = 12;
        uint y = 7;
        uint x = z - y / 9;
        x = x * 2;
        x = x / 13;
        return 6553;
    }
}

contract ContractWithNestedContracts1 {
    function contractWithNestedContracts0(ContractWithNestedContracts2) public pure returns (uint256) {
        ContractWithNestedContracts2 child = new ContractWithNestedContracts2();
        child.contractWithNestedContracts0(child.contractWithNestedContracts0(child));
        return 0;
    }
}

contract ContractWithNestedContracts2 {
    uint x = 3;
    function contractWithNestedContracts0(ContractWithNestedContracts1 parent) public pure returns (uint256) {
        parent.contractWithNestedContracts0(parent);
        return 0;
    }
}
