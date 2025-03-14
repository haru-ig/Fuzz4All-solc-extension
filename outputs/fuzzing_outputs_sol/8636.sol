pragma solidity ^0.8.0;


contract Foo {
    Mutator contract1;

    Mutator contract2;

    function _fallback() public payable {

        emit Log(_fallbackCaller, 1, contract1, 1000);
    }
}
contract MyContract {
    uint value = 0;
    function _readValue() public {
        value = 5;
        emit Log(_caller, 4, value);
    }
    function _fallback() payable external { }
}
contract Caller {
    uint value;
    constructor() public {
        MyContract instance = new MyContract();
    }
    function _readValue() public {
        value = 15;
        emit Log(_caller, 3, value);
    }
    function _fallback() public { }
}
