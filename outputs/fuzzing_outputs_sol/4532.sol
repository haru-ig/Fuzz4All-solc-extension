pragma solidity ^0.8.0;
contract SemanticDifferent3 {
    function mutate() public pure {
        SemanticDifferent3 storage st = storage1;
        st.x2 = 3;
    }

    struct storage1 {
        uint x2;
    }
}
