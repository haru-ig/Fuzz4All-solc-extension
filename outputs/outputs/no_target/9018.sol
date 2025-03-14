pragma solidity ^0.8.0;
contract NoEffectMutations {
    function equivalent() public {
    }
    function mutated() public {
    }
}
contract UpgradingMutations {
    function equivalent() public {
    }
    function mutated() public {}
}
