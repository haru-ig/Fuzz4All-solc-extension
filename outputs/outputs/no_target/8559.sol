pragma solidity ^0.8.0;
contract Contract
{
	contract Inner
	{
		bool x;
        function f() public view returns (uint) {
            x = true;
      	    return 2 ** (uint(uint10(10)) / 10**4);
        }
    }
	function f(uint a) public view returns (uint)
	{
        Inner inner;
        inner.f();
        if (a > 5) {
	         	return 2 * inner.f();
	  	}
		return 1;
	}
    }
contract Prev_Test {
    modifier check(uint a, uint b)  {
        if (a >= b)
        {
            uint c = 1 + 0;
            assert(true);
        }
    }
    function doSomething(uint a, uint b) public view returns (uint) {
        uint c = 0xffffffffffffffffffff;
        a check(b,c);
        if (c == 288383) {
            return 256-288383;
        }
      	return 100;
    }
    }
