pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutated {
	struct mutated {
		uint a;
	}

	uint256 public data;
	constructor(uint256 initial_value) {

		data = initial_value;
	}
	modifier only_once {
    	if (block.number == 1) {
      		require(false);
    	}
    	_;
  	}
  	function add1(uint256 value) public only_once {
	   data += value;
  	}
}
contract mutated2 {
	address _a;
	address _b;
	address payable _c;
	address calldata _d;
	address payable calldata _e;
	modifier only_once {
	  if (block.number == 4) {
  		require(false);
  		}
    	_;
  	}
  	function m2014to2015(address x) public only_once{
  		_a = x;
  	}
  	function m2015to2016(address x) public only_once {
  		_b = x;
  	}
  	function m2016to2017(address x) public only_once {
  		_c = x;
  	}
  	function m2017to2018(address x) public only_once {
  		_d = x;
  	}
  	function m2018to2019(address x) public only_once {
  		_e = x;
  	}
}
contract mutated3 {
  	function m2014to2015(address x) public returns(address){
  		require(x!= address(0));
  		return x;
  	}
  	function m2015to2016(address x) public returns(address payable) {
  		address addr = x;
  		require(x!= address(0));
  		return addr;
  	}
}
