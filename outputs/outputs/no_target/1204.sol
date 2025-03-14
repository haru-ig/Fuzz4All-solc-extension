pragma solidity ^0.8.0;
contract SemanticInjection3
{
    function semanticInjection4() public pure {
		uint256 a;
    	if (a == 0) {
    		a = a.cast(1);
    	}
    }
}

pragma solidity ^0.8.0;
contract SemanticInjection4
{
    function semanticInjection5() public pure {
        uint256 a;
        if (a == 0) a = a.cast(1);
    }
}

pragma solidity ^0.8.0;
contract SemanticInjection5
{
    function semanticInjection6() public pure {
        uint256 a;
        if (a == 0) a.cast(1);
    }
}

pragma solidity ^0.8.0;
contract SemanticInjection6
{
    function semanticInjection6() public pure {

        uint256 a;
        if (a == 0) {
            a = a.cast(1);
        }
    }
}
