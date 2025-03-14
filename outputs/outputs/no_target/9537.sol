pragma solidity ^0.8.0;
contract A {
    event Log1(string msg);
    event Log2(uint160 val);
    event Log3(uint256 val);
    function f() external {
        emit Log2(1);
        emit Log3(1);
        emit Log1("hello");
    }
}
