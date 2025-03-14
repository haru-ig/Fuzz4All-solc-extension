pragma solidity ^0.8.0;
contract m106 {
	mapping (uint => uint) public m;
	constructor() public {
		m[0] = 2;
		x = m.get(4);
		x = m.get(4);
		m.set(0, x);
	}
	function get(uint k) public view returns(uint){
		if (k == 0) {
			return 4;
		}
		return m[k];
	}
}


 contract m107 {
 	uint public m;
 	mapping(uint => uint) public m2;
 	constructor() public {
 		m = 2;
 		uint x = m.get(4);
 		m.get(0);
 	}
 }
