pragma solidity ^0.8.0;
library L1 {
    function f() public pure {
        uint256[] memory x;
    }
}
pragma solidity ^0.8.0;
library L2 {
    function f() public pure {
        uint256[] memory x;
    }
}
pragma solidity ^0.8.0;
library L3 {
    function f() public pure {
        uint256[] memory x;
    }
}

pragma solidity ^0.8.0;
contract C {
    function f() public pure {
        L.f();
    }
    function g() public pure {
        L1.f();
    }
    function h() public pure {
        L2.f();
    }
    function i() public pure {
        L3.f();
    }
}
