pragma solidity ^0.8.0;
contract SemanticDifferent6 {
    function mutate() public pure {
        semanticsDifferent6();
        SemanticDifferent6.semanticDifferent6();
    }
    function semanticDifferent6() public pure {
    }
}

library SemanticDifferentLibrary {
    function semanticDifferentLibrary() public pure {
        SemanticDifferentSemaph4();
    }
    function SemanticDifferentSemaph4() public pure {
    }
}

contract SemanticDifferent7 {
    function mutate() public pure {
        semanticsDifferent7();
    }
    function semanticDifferent7() public pure {
    }
}

contract SemanticDifferent8 {
    function mutate() public pure {
        semanticsDifferent8();
        semanticsDifferent8.mutate();
    }
    function semanticDifferent8() public pure {
    }
}

contract Caller {
    function call() public payable {
    }
    receive() external payable {
    }
}
