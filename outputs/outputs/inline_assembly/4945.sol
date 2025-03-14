pragma solidity ^0.8.0;
contract simple3 {
  uint[] public x;

  function getData() public view returns(uint) {
	return x[0];
	}
}
pragma solidity ^0.8.0;
contract simple4 {
	uint[] memory x;
	constructor() {
		x.push(0);
		x.push(42);
		x.push(42);
		x.push(0);
	}
	function getData() public view returns(uint) {
		return x[0];
	}
}
