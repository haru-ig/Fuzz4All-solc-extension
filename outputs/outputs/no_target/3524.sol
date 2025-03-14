pragma solidity ^0.8.0;
contract m105 {
	uint public a;
	mapping(bytes32 => uint) public m;
	mapping(bytes32 => uint) public mm;
	constructor(uint _a) { a = _a;   mm["1"] = 1;  mm["9e00"] = 5;  mm["35"] = 2;   mm["234"] = 3; }
	function m106() public returns (uint){return a;   }
	function  m107() public returns(uint) {return a;  }
	function m108() public returns(bytes32) {return a; }
	function  m109() public returns(bytes32) {return "a"; }
	function m110() public { return a;   }
	function  m111() public { return a;  }
	function m112() public { return a;   }
	function  m113() public { return a;  }
	function m114() public { return  a;   }
	function  m115() public { return  a;  }
	function m116() public { return a;   }
	function  m117() public { return a;   }
	function m118() public { return  a;   }
	function  m119() public { return  a;  }
	function m120() public { return a; }
	function  m121() public { return a;       }
	function m122() public { return a;         }
	function  m123() public { return a;        }
	function m124() public { return a;         }
	function  m125() public { return a;        }
	function m126() public { return a;         }
	function  m127() public { return 'a';   }
	function m128() public { return a;         }
	function  m129() public { return  'aaaaa';   }
	function m130() public { return a;         }
	function  m131() public { return '0x';   }
	function m132() public { return '0x1'; }
	function  m133() public { return 0x2;   }
	function m134() public { return
