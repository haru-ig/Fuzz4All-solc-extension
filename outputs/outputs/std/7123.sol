pragma solidity ^0.8.0;
contract Or {
	bytes memory public a;
	bytes memory b;
	function test() public {
		a = or(a, b);
		a = or(a, retract(0x01234567012345670123456701234567));
		b = or(b, a);
		b = or(b, retract(0x01234567012345670123456701234567));
		a = and(a, a);
	}
}
