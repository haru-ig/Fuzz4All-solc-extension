pragma solidity ^0.8.0;
contract SemanticEquiv {
    function mutate() public pure {
        revert("");
    }
}

pragma solidity ^0.8.0;
interface SemanticDifferent42 {
    function mutate() public pure {
    }
}


pragma solidity ^0.8.0;
interface SemanticDifferent50 {
    function mutate() public pure {
    }
}


pragma solidity ^0.8.0;
contract SemanticDifferent50 {
    modifier modifier1() {
        (bool b) = msg.value > 0;
        if (b) {
            revert("");
        }
        _;
    }

    function mutate() public pure {}
}
