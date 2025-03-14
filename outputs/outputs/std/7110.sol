pragma solidity ^0.8.0;
contract BitwiseXOR {
	uint[64] a;
	function test() public {
        a |= 0xffffffffffffffff;
	}
}

pragma solidity ^0.8.0;
interface ISuper {
 function test(uint _a) public;
}

pragma solidity ^0.8.0;
interface SomeInterface {
 function functionCall(uint _a) public;
}

pragma solidity ^0.8.0;
interface IMathInterface {
 function functionCall(uint _a, uint _b) public;
}
