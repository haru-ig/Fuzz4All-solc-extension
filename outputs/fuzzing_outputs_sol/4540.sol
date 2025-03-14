pragma solidity ^0.8.0;
contract SemanticDifferent2 {
    function mutate() public pure returns(bool) {
        SemanticDifferent3 storage s = SemanticDifferent3(type(SemanticDifferent2).total_contract_size());
        s.mutate();
        assert(s.mutate());
        return true;
    }
    function total_contract_size() public pure returns(uint) {
        return type(SemanticDifferent2).total_contract_size();
    }
}
