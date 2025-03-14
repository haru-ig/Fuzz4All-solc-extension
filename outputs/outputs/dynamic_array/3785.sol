pragma solidity ^0.8.0;
contract C {
    bytes20[] a;

    modifier m {
        require(c(), "FAIL");
        _;
    }

    function modifies() public m {}
}
interface ISuper {}
contract C is ISuper {
}
