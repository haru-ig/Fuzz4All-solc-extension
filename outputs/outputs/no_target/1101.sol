pragma solidity ^0.8.0;
contract SemanticMutation2
{
    uint256 public test = 23;

    constructor() public {
    	test = test % 256;
    }
}

pragma solidity ^0.8.0;
contract SemanticMutation1
{
    uint256 public test = 23;
    function f() public {
    	test = test % 256;
    	return;
    }
    function g() public {
    	test += 256;
    	return;
    }
    function h() public {
    	test = test % 256;
    	return;
    }
}

pragma solidity ^0.8.0;
contract SemanticMutation3
{
    uint256 public test = 23;
    constructor() public {
    	test = test;
    }
    function f() public {
    }
}
