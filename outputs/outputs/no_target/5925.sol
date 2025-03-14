pragma solidity ^0.8.0;
contract A {
    function f(uint256) public {
        uint256 x = 1;
        uint256 y = 2;
    }
}

pragma solidity ^0.8.0;
contract A {
    function f(uint256) public {
        uint256 x = 1;
    }
    function g(uint) public {
        uint x = 1;
        uint y = 2;
    }
}

pragma solidity 0.8.0;
contract A {
    function f(uint256) public {
        uint256 x = 1;
    }
    function g(uint) public {
        uint x = 1;
        uint y = 2;
    }
}
