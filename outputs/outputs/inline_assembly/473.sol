pragma solidity ^0.8.0;
contract SemanticallyEquivalenty20 {
    constructor () public {
        emit Log("This is msg.sender!", "", "");
    }
    event Log(string value1, string value2, string value3);
}
contract SemanticallyEquivalenty {

	constructor () public {

		emit Log(1, "Test", "test");
	}
	event Log(uint _value1, string _value2, string _value3);
}
contract InvalidSemanticEquivalence
{

	constructor(uint input) public {


	}

}

contract SemanticallyEquivalenty
{

	constructor () public {

		emit Log(1, "Test", "test");
	}
	event Log(uint _value1, string _value2, string _value3);
}
contract SemanticallyEquivalenty {
    uint private __value;
    constructor() public {
        __value;
    }

    function set(uint i) public {
        __value = i;
    }

    function get() external view returns (uint) {
        return __value;
    }
}
