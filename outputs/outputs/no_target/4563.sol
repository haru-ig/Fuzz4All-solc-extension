pragma solidity ^0.8.0;
contract H {
    event Evt(uint256 x);
    uint256 x = 11;
    function g() public {
        Evt(x + 1);
    }
}

pragma solidity ^0.8.0;
contract M {
    function g() public pure {
        H h = new H();
        h.g();
    }
}
contract Oo {
    function foo() public {
        M m;
        m.g();
    }
}
