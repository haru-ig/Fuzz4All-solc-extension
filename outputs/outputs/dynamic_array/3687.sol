pragma solidity ^0.8.0;
contract E {
    uint256[100]  a;
    constructor() {}
    function f() public view {
        a;
    }
}

pragma solidity ^0.8.0;
abstract contract A {
    address payable[100]  a;
    event e0(uint256);
    constructor() {}
    modifier g(uint256 a_) {
        e0(a_);
        _;
    }
    function f() public g(1) {
        a;
    }
}
contract B is A {
    event e1(uint256);
    constructor() {}
    modifier g(uint256 a_) {
        e1(a_);
        _;
    }
    function f() public view g(2) {
        a;
    }
}
