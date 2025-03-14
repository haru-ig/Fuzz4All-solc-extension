pragma solidity ^0.8.0;
contract SemanticsMutator_v09 {
    uint160 public value_v06;
    uint32 public value_v07;
    uint256 public value_v08;
    function equivalent() public {
    }
}
contract MyContract {
    function mutator() public {
        Mutators.equivalent();
        Mutators.equvivalent();
        SemanticsMutator_v06.equivalent();
        SemanticsMutator_v07.equivalent();
        Mutators().equivalent();
        Mutators().equivalent();
        Mutators().equivalent();
        SemanticsMutator_v09.equivalent();
        SemanticsMutator_v09.equivalent();
    }
}
