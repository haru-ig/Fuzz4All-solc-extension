pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutator6 {
	struct mutator6 {
		uint h;
		uint i;
	}
	constructor() public{
		data.h = 5;
		data.i = 5;
	}
	function modify6(uint newh, uint newi) public{
	  data.i = newi;
	  data.h = newh;
	}
}
contract mutator7{
  struct mutator7 {
    uint h;
    uint i;
  }
  constructor() public{
    data.h = 6;
    data.i = 6;
  }
  function modify7(uint newh, uint newi) public{
    data.i = newi;
    data.h = newh;
  }
}
contract mutator8{
  struct mutator8 {
    uint h;
  }
  constructor(){
    data.h = 21;
  }
  function modify8(uint newh) public{
    data.h = newh;
  }
}
contract mutator9{
  struct mutator9 {
    uint h;
  }
  uint256[2] public data;
  constructor(){
    data[0] = 5;
    data[1] = 5;
  }
  function modify9(uint[2] _h) public{
    data[0] = _h[0];
    data[1] = _h[1];
  }
}
contract mutator10{
  struct mutator10 {
    uint[2] h;
  }
  constructor(){
    data.h[0] = 5;
    data.h[1] = 5;
  }
  function modify10(uint[2] _h) public{
    data.h[0] = _h[0];
    data.h[1] = _h[1];
  }
}
