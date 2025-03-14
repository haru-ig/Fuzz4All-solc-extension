pragma solidity ^0.8.0;
contract B is A {
    function f() public pure returns (uint256) {
        return 2;
    }
    function g() public pure returns (uint256) {
        return 8;
    }
}

pragma solidity ^0.8.0;
contract A {
    bool public a;
    function A(uint256 _a) public {
        a = _a;
    }
}

pragma solidity ^0.8.0;
contract B is A {
    function B(uint256 _a, uint256 _b) public {
        a = _a + _b;
    }
}
