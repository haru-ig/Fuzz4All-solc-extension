pragma solidity ^0.8.0;
contract AA { function f(uint256 a) public view returns(uint256) { assert(a == 2); return a * 5; } }
contract AB { function f(uint256 a) public view returns(uint256) { assert(a == 2); return 5 * a;} }
*/





pragma solidity ^0.8.0;
contract Test {
   function f(uint256 x) public pure returns(uint256 y) {
	   return uint256(uint128x.a2() + 0xffff);
   }
}
