pragma solidity ^0.8.0;
contract SemanticDifferent2 is SemanticDifferent3 {
	function mutate() public {
	}
}

pragma solidity ^0.8.0;
contract SemanticDifferent1 {
    function mutate() public pure {
		var v = 1;
    }
    function test(bool cond) public {
		if (cond)
			throw;
    }
}
contract Fallback {
    function call() public pure {
    }
}
