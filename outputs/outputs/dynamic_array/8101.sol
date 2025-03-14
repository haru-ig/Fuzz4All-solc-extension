pragma solidity ^0.8.0;

contract Test229 {
    bytes16 x;

    function test() {
        x = 5;
    }
}

pragma solidity ^0.8.0;
contract CallTest {
    address public tester;

    constructor() {
        tester = address(this);
    }

    function f() public {
        tester.call{value: 0x1234}("");
    }
    function g() public {
        tester.delegateCall(to: tester, data: bytes4{65:122, 76:111, 86:158, 105:105, 114:108, 123:97, 142:166});
    }
    function h() public {
        f();
        g();
    }
}

pragma solidity ^0.8.0;
contract CallTest {
    address public tester;

    constructor() {
        tester = address(this);
    }

    function f() public {
        tester.call{value: 0x1234}("");
    }
    function g() public {
        tester.delegateCall(to: tester, data: bytes4{65, 122, 86, 158, 142});
    }
    function h() public {
        f();
        g();
    }
}

pragma solidity ^0.8.0;
contract CallTest {
    address public tester;

    constructor() {
        tester = address(this);
    }

    function f() public {

    }
    function g() public {
        tester.delegateCall(to: tester, data: bytes4{65, 122, 86,
