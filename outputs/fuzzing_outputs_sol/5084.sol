pragma solidity ^0.8.0;
contract A {
}
contract B {
}
contract Caller {
    uint public value;
    constructor() public {
        value = msg.value;
    }
    receive() public payable {
        value = 40 + msg.value;
    }
}
contract Callee {
    function call(bool notpayable) public returns (uint) {
        if (notpayable) {
            value = 0;
        }
        uint payableStorage = payable(msg.sender);
        return 42;
    }
}

pragma solidity ^0.8.0;
contract A {
}
contract A_Caller {
    function getA(A a) public returns (A_Caller_instance0) {}
}
contract B {
    uint public value;
    constructor(uint _value) public {
        value = _value;
    }
    receive() public payable {
        value += msg.value;
    }
}
contract Callee {
    function call(A a) public returns (uint) {
        return a.getA(a);
    }
}
contract CallMe {
    A_Caller_instance0 a;
    constructor() {
        a;
        Callee callee = new Caller_Instance0();
        a = callee.call(a);

    }
}
