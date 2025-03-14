pragma solidity ^0.8.0;

contract a {
	struct aContainer {
		uint x;
	}
	function setX(aContainer memory container, uint val) public {
		container.x = val;
	}
	function getX(aContainer memory container) public view returns (uint) {
		return container.x;
	}
}
contract b is a {
	type uint256Alias = uint;
	function _modifyX() internal {
		x = 7;
	}
	function setX(aContainer memory container, uint val) public {
		a._modifyX();
		container.x = val;
	}
}
contract c is b {
}
contract d {
	function f() public view returns (aContainer) {
		uint _x;
		return aContainer(c.(_x));
	}
}
