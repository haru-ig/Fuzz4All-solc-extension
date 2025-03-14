pragma solidity ^0.8.0;
contract SemanticMutation3
{
	uint256[] memory a;
	uint256[] memory c;

	function semanticMutation(uint256[] memory a) public pure {
	    a = new uint256[](2);
	    c = new uint256[](1);
	    c[0] = 0;
	    c = a;
	}
	function semanticMutation4(uint256[] memory a) public pure {
	    uint256[] memory temp = a;
	    a = new uint256[](2);
	    uint256[] memory temp2 = c;
	    c = temp;
	}
}
contract SemanticMutation4
{
	uint256[] memory a;

	function semanticMutation1(uint256[] memory a) public pure {
        a[0] = 0;
        a = a;
	}

	function semanticMutation2(uint256[] memory a) public pure {
		uint256[] memory t = a;
		a[0] = 0;
		uint256[] memory temp = t;
		a = t;
	}
}
contract SemanticMutation5
{
    uint256[] memory a;
    uint256[] memory b;

    function semanticMutation3(uint256[] memory a) public pure {
    	b = new uint256[](1);
    	a[0] = 1;
    	b = a;

    	a = new uint256[](2);
    	c = new uint256[](1);
    	c[0] = 1;
    	a = a;
    }
    function semanticMutation4(uint256[] memory a) public pure {
    	uint256[] memory c = new uint256[](1);
    	c[0] = 1;

    	a = new uint256[](2);
    	b = new uint256[](1);
    	b[0] = 1;
    	a = a;
    }
}
