pragma solidity ^0.8.0;
contract good {
	uint data_public =1;
	uint public data_public =1;
	constructor() { data_public += 2; }
    function add2() public returns (uint) { return data_public; }
	function add() public pure returns (uint) { return data_public + 3; }
}
