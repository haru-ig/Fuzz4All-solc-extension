pragma solidity ^0.8.0;
contract Test2{
	struct test {
		address a;
		bool b;
		uint c;
	}
    function isTrue(test memory _test) pure public returns(bool,uint256) { return (_test.a!=address(0), 100000000);}
}
