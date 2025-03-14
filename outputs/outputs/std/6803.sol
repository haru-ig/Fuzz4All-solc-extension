pragma solidity ^0.8.0;
import "./A.sol";
contract a is A {
	uint public y;
	modifier Pmod(uint _a) { require(_a % y == 0, "Modulus Violation"); _; }
}
