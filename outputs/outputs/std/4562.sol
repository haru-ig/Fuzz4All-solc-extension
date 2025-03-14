pragma solidity ^0.8.0;
contract MyContract {
    constructor() public {
    }
}

pragma solidity ^0.8.0;
contract MyContract {
    uint public init;
    constructor() public {
        init=2;
    }
    function setInit(uint _init) public {
        init=_init;
    }
    function getInit() public view returns(uint) {
        return init;
    }
}

pragma solidity ^0.8.0;
contract MyContract {
    uint public init;
    bool public flag=false;
    constructor(bool _init) public {
        flag=true;
        init=_init;
    }
    function setInit(uint _init) public {
        init=_init;
    }
    function isFlag() public view returns(bool) {
       return flag;
    }
}

pragma solidity ^0.8.0;
contract MyContract {
	mapping(address=>MyContract) _contracts;

    constructor(address _init) public {
        MyContract storage temp = _contracts[msg.sender] = MyContract(_init);
    }

    function lookup(address _addr) public view returns(MyContract) {
       return _contracts[_addr];
    }

    function isKnown(address _addr) public view returns(bool) {
        return _contracts[_addr].isKnown;
    }
}

pragma solidity ^0.8.0;
contract MyContract {
	mapping(address=>bool) public _contracts;

	constructor(bool _init) public {
		_contracts[msg.sender]=_init;
	}

    function state(address _addr) public view returns(bool) {
		assembly {
			let memory_index := returndatacopy(0, 0x04)
			let memory_length := returndatasize
