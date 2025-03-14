pragma solidity ^0.8.0;
contract SemanticallyEquivalenty2 is SemanticallyEquivalenty3 {
    constructor () public SemanticallyEquivalenty3() {
    }
    fallback() public override payable {
        emit Log((msg.sender), "", "");
    }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalenty1 {
    constructor (address payable _to) public SemanticallyEquivalenty3() {
        (uint256 _value) = address(this).balance;
        _to.sendValue(_value);
    }
}

contract SolidityInlineAssembly {
    fallback() external payable {
        emit Log();
    }
    event Log();
}
contract SemanticallyEquivalenty {
    address payable _to;
    fallback() external payable {

        emit Log(_to, "", "", "", 0);
        _to.sendValue(msg.value);
    }
    event Log(address indexed value1, string value2, string value3, string value4, uint64 value5);
}

contract SemanticallyEquivalent5 {
    fallback() external payable {
        emit Log();
    }
    event Log();
}
contract SemanticallyEquivalent4 {
    address payable _to;
    bool _was;
    fallback() external payable {

        emit Log(_to, "", "", "", 0);
        _to.sendValue(msg.value);
    }
    event Log(address value1, string value2, string value3, string value4, uint64 value5);
}
contract SemanticallyEquivalent6 {
    fallback() external {
        emit Log();

        _to();
    }
    event Log();
    event Log2();
}
contract SemanticallyEquivalent2 {
    fallback() public payable {
        emit Log();
    }
    event Log();
    fallback() public {
        emit Log2();
        _to();
    }
    event Log2();
}
contract SemanticallyEquivalent8 {
    constructor() public {
        _was = true;
    }
    fallback() public {
        emit Log();

    }
    event Log();
}
contract SemanticallyEquivalent7 {
    bool _was;
    constructor(bool val) public {
        _was = val;
    }
    fallback() public {
        emit Log();
    }
    event Log();
}
contract SemanticallyEquivalent9 {
    bool _was;
    constructor(bool val) public {
        _was = val;
    }
    fallback() public external {
        emit Log();
    }
    event Log();

    fallback() public internal {
        emit Log2();
        _to();
    }
    event Log2();
}
