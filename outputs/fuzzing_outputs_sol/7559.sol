pragma solidity ^0.8.0;
contract Semantics {

    uint a = 0;
    uint b = 0;

    enum E {
        E_0,
        E_1,
        E_2,
    }
    E e;

    uint[] data = [12332];

    constructor() {}

    fallback() public view {}





    function() external payable {
        require(msg.value >= 2, "Too few Ether!");
        assert(msg.data.length == 8);
        data[0] = data[0] * 2;
    }

    function test() public nonpayable {
        require(a < 2);
        assert(b == 0);
        b = c;
        require(b == 5);
    }

    function c() public view returns(uint) {
        return data[0];
    }

    function f() public pure {}

    function g() public view returns(uint) {
        return data[-1];
    }
}
