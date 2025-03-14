pragma solidity ^0.8.0;
contract isNewContract {
	event EmittedEvent(address indexed from, uint indexed value);
	mapping(address => uint) public _values;
	event Log(address indexed from);

	uint32 public _initialValue = 100;
	function set(address receiver) public {
		_values[receiver] = _initialValue;
	}
	function get() public view returns (uint) {
		return _values[msg.sender];
	}
}
contract isEquivalenceToPreviousContract {
	function call() public {
		isNewContractInterface.emitLog(msg.sender);
	}
}
interface isNewContractInterface {
	event Log(address indexed from);

	function emitLog(address indexed from);
}
contract isEquivalenceToPreviousInterface {
	function call() public {
		iInterface interfaceToModify = isEquivalenceToPreviousInterface.selector;
		iInterface.selectorToProxy(interfaceToModify);
	}
}

pragma solidity ^0.8.0;
contract isNewContract {
	event EmittedEvent(address indexed from, uint indexed value);
	mapping(address => uint) public _values;
	event Log(address indexed from);

	uint32 public _initialValue = 100;
	struct Super {
		uint8 _value;
	}

	struct Sub extends Super {
		uint8 _value;
	}

	function set(address receiver) public {
		_values[receiver] = _initialValue;
	}

	function get() public view returns (uint, uint) {
		return (_values[msg.sender], _values[iInterface.selectorToProxy(msg.sender)]);
	}
}
contract isEquivalenceToPreviousInterface {
	function call() public {
		isNewContractInterface.emitLog(msg.sender);
	}
}


pragma solidity >=0.6.0 <0.9.0;
