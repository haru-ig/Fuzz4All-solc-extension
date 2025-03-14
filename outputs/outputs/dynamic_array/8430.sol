pragma solidity ^0.8.0;
contract mutantSolidity388584848555 {
    bytes[] x;
    constructor(bytes[] memory arg_val) {
        x = arg_val;
    }
    function x() public pure returns (bytes[] memory) {
        return x;
    }
}

pragma solidity ^0.8.0;
contract mutantSolidity5726239234 {
    uint256 a;
    constructor(uint256 arg_val) {
        a = 0;
    }
    struct B {
        uint256 b;
    }
    function x() public pure returns (uint256) {
        return a;
    }
    function y() public pure returns (B memory) {
        return (B(a));
    }
    function y2() public pure returns (B[]) {
        return new B[](1);
    }
}
