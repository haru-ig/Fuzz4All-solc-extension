pragma solidity ^0.8.0;
contract SemanticsExample {
    function mutate() public pure {
        SemanticDifferent2 sc = new SemanticDifferent2();
        address self_address = address(this);
        uint old_call = self_address.call{value: 10 ether}(abi.encode(sc.mutate.selector));
        bool ok = old_call == 0;
        require ( ok );
    }
}
