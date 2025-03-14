pragma solidity ^0.8.0;
contract A {
    function m() public {
        C c = new C();
        c.f();
    }
}

pragma solidity ^0.8.0;
contract B {
    event E();
    function f() public {
        assert(false);
    }
}


pragma solidity ^0.8.0;
contract C {
    function f() public payable {
        revert(string(abi.encode("x")));
    }
}

pragma solidity ^0.8.0;

contract A {
    address payable c;

    constructor () payable {
        c = msg.sender;
    }
    function f() public {
        b();
    }

    function g() public {
        g();
    }

    function b() public {
        while(true) {

            A.callValue{value: 1 ether}(c);
        }
    }
}

pragma solidity ^0.8.0;
contract A {
    address payable c;

    constructor () payable {
        c = msg.sender;
    }

    function f() public {
        c.call{value:1 ether}(c);
    }
    function g() public {
        b();
    }

    function b() public {
        while(true) {

            A.callValue{value: 1 ether}(c);
        }
    }
}

pragma solidity ^0.8.0;
contract B {
    address payable a;
    address payable b;
    constructor (address _a, address _b) {
        a = _a;
        b = _b;
    }
    function f() public payable {
        a.call{value:1 ether}(a);
    }

    function g() public {
        b.call{value: 1 ether}(a);
    }
}<fim_middle>contract B is C {
    constructor () public {
        a = msg.sender;
    }
}



pragma solidity ^0.8.0;
contract A is B {
    contract caller {
        A a;
        function f() public {
            a.f();
        }
        function g() public {
            a.g();
        }
        function b() public payable
