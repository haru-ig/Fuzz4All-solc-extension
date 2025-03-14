pragma solidity ^0.8.0;
library A {
    function f() public pure returns (uint i) {
        i = 42u;
    }
}
pragma solidity >=700;






contract A_old {
    function f() public pure returns (uint256 i) {
        i = 42u;
    }
}

contract B is A_old {
    function f() public pure {
        f();
    }
}

contract C is B {
    function f() public virtual {
        f();
    }
}
