pragma solidity ^0.8.0;
contract C {
    uint private c;
    uint public D=1;
    function f() public {
        c = c + D;
    }
}

pragma solidity ^0.8.0;
interface I {
    function f() public;
}
contract C {
    I private c;
    function f() public {
    }
}
