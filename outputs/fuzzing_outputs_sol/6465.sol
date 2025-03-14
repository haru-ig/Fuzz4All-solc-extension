pragma solidity ^0.8.0;
contract D {
    function bar() public pure {
        uint x;
        uint y = x + 1;
    }
}


pragma solidity ^0.8.0;
contract D {
    function foo() public payable pure {
        uint x;
        uint y = x + 1;
        D c = new D();
        c.bar.value(address(this).balance)();

        c.foo.value(address(this).balance)();
    }
}

pragma solidity ^0.8.0;
contract D {
    function foo() public pure {
        uint x;
        uint y = x + 1;
    }

    function bar() public pure {
        uint x;
        uint y = x + 1;
    }

    function fallback() public payable {
    }
}
