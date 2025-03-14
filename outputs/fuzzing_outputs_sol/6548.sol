pragma solidity ^0.8.0;
contract C {
    function f() public payable {}
    constructor() {
        address addr = msg.sender;
    }
    function g() public payable {
        uint b;
    }
}

contract C {
    function f() public payable {}
    constructor() {
        address addr = msg.sender;
    }
    function g() public payable {
        assembly {
            let b := 1000
        }
    }
}

contract C {
    function f() public payable {}
    constructor() {
        address addr = msg.sender;
    }
    function g() public payable {
        uint b;
        assembly {
            let b := 1000
            b := 40 * b
        }
    }
}

contract C {
    function f() public payable {}
    constructor() {
        assembly {
            let b := sqrt(1024)
        }
    }
    function g() public payable {
        uint b;
        try {
            b = sqrt(1024)
        } catch (e return (b, memory));
    }
}

contract C {
    constructor() {
    }
    function f() public payable {}
    receive () external payable {
        revert();
    }
    function g() public payable {
        uint b;
        assembly {
            let b := sqrt(1024)
            b := 1000
        }
    }
}

contract C {
    function f() public payable {}
    constructor() {
    }
    function g() public payable {
        uint f1;
        uint f2;
    }
    receive () external payable {
        revert();
    }
}

contract Caller {
    function f() public payable {}
    function g() public payable {
        uint b;
        address addr = msg.sender;
        try {
            f1;
        } catch (e1) {
            try {
                f2;
            } catch (e2) {

                b = addr.call.value(5)();
            }
        }
    }
}

contract Caller {
    function f() public payable pure {
    }
    function g() public payable {
        uint b;
        address addr = msg.sender;
        try {
            f1();
        } catch (e1) {
            try {
                f2();
            } catch (e2) {

                b = addr.call.value(5)();
            }
        }
    }
}

contract Caller {
    constructor() {
    }
    function f() public payable {
    }
    receive () public payable {
        uint b;
        address addr = msg.sender;
        try {
            f1();
        } catch (e1) {
            try {
                f2();
            } catch (e2) {
