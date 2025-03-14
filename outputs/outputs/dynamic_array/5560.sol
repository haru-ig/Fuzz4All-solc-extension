pragma solidity ^0.8.0;
contract Test67 {
    function x() public {
        emit a();
        a();
    }
    function y() public {
        emit b();
        b();
    }
    function z() public {
        emit c();
        c();
    }
    function a() public pure {
        (uint256 z) = (x, x, x, c);
    }
    function b() public pure {
        (uint256 z) = (x, y, c, z);
    }
    function c() public pure {
        (uint256 z) = (x, z, b, a);
    }
}
