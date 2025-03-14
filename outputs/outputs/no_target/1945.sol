pragma solidity ^0.8.0;
contract Mutated {
    uint public n;
    function g() public view returns (uint) {
        return n;
    }
    function h() public pure {
        n = X;
    }
    function g() public pure returns (uint) {
        n = 1;
        n = 2;
        return n;
    }
}

pragma solidity ^0.8.0;
contract Complex {
    uint public x;
    function g() public pure returns (bool) {
        x = 5;
        x = 6;
        return x == 5;
    }
}
contract Bad {
    uint public x;
    function f() public pure {
        x = 5;
        x = -1;
    }
}
contract Bad2 {
    uint public x;
    function f() public pure {
        x = -1;
        x = 5;
    }
}
contract Bad3 {
    uint public x;
    function f() public pure returns (uint) {
        x = 5;
        x = 6;
        return x - 1;
    }
}
