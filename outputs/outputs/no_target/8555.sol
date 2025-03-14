pragma solidity ^0.8.0;
contract Next_Equivalent {
    uint public a;
    function doSomething() public {
    	uint b = 2 + a;
        require (b == a + 1, "bad");
    }
    }

pragma solidity ^0.8.0;
contract Last_Equivalent {
    uint public a;
    uint public b;
    function doSomething() public {
    	a = 2;
    	require(a + 1 >= b + 1, "bad");
    }
    }

pragma solidity ^0.8.0;
contract Last_Equivalent2 {
    uint public a;
    uint private b;
    uint private c;
    function doSomething() public {
    	a = 2;
    	b = 2 * b + 1;
    	require(a + 1 >= b + 1 && a + a >= b + 1, "bad");
    }
    }

pragma solidity ^0.8.0;
contract Last_Equivalent3 {
    uint public a;
    uint public b;
    uint public c;
    uint public x;
    function doSomething() public {
    	a = 2;
    	b = 2 * b + 1;
    	c = b * 2;
    	x = b * b * b * 2 + c * 4;
    	require(a + 1 >= b + 1 &&
          	a + a >= b + 1 && x >= b + b + 3 && x >= a + a + a + a + a + 4, "bad");
    }
    }

contract Output {
    function get(uint a, uint b) public {
       require (b!= a, "bad");
       uint answer = a * b;
    }
    }
