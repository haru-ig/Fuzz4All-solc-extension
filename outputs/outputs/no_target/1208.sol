pragma solidity ^0.8.0;
contract SemanticInjection4
{
    function semanticInjection5(uint256 a) public pure {
    	uint256 b = a + 1;
    	uint256 c;
    }
    function semanticInjection6(uint256 a) public pure isZero(a, b) {
    	uint256 b = a - 1;
    	uint256 c;
    }
}

pragma solidity ^0.8.0;
contract SemanticInjection5
{
    function semanticInjection7(uint256 a) public pure {
    	uint256 b = a ^ 1;
    	uint256 c;
    }
}
contract SemanticInjection3_2 is SemanticInjection3 {
    function semanticInjection3(uint256 a, uint256 b) public pure {
    	uint256[] memory array = new uint256[](3);
    	array[0] = a;
    	array[1] = b;
    	array[2] = 1;
    }
}
contract SemanticInjection4_2 is SemanticInjection4 {
    function semanticInjection6(uint256 a) public pure {
    	uint256 b = a - 1;
    	uint256 c;
    }
}
contract SemanticInjection5_2 is SemanticInjection5 {
    function semanticInjection7(uint256 a) public pure isZero(a, b) {
    	uint256 b = a ^ b ^ b^ a;
    	uint256 c;
    }
}
