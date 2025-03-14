pragma solidity ^0.8.0;
contract Foo {
    receive() external payable {}
    fallback (uint x) external {
        uint y;
    }
}
contract Caller {
    address public bar;

    receive() payable external {}


    constructor (address _bar) {
        bar = _bar;
    }

    function use () public returns (uint) {
        uint x;

        fallback(x);
    }
}
