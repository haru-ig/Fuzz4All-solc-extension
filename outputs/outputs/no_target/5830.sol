pragma solidity ^0.8.0;
contract C32 {
    address payable _test;
    function test() public {
        uint x = _test.balance;
        _test = payable(new A());
        emit event(address(this), uint(uint160(x)));
    }
    event event(
        address indexed who,
        uint indexed value
    );
}
