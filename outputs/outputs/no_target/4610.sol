pragma solidity ^0.8.0;
contract B{
    function f() public{
        f();
        f();
        f();
    }
}

pragma solidity ^0.8.0;
contract B{
    function f(bool b) public {
        f();
        f(b);
    }

    function g() public {
        g(0);
        g(0);
        g(0);
    }
}

pragma solidity ^0.8.0;
contract B{
    function f(bool) virtual public {
        f();
        f();
        f();
    }

    function g(uint160) public {
        g();
        g();
        g();
    }
}
