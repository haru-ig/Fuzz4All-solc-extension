pragma solidity ^0.8.0;
library SemanticallyEquivalent14
{
    using semanticallyequivalent13 for semanticallyequivalent13.storage;
    struct storage
    {
        uint x;
        uint y;
    }
    function get_x()public view returns (uint _x) {
        return x;
    }
    function get_y()public view returns (uint _y) {
        return y;
    }
    function set_x(uint _x)public view returns (bool _success) {
        x = _x;
        return true;
    }
    function set_y(uint _y)public view returns (bool _success) {
        y = _y;
        return true;
    }
}
contract semanticallyequivalent14
{
    using SemanticallyEquivalent14 for semanticallyequivalent14.storage;
    address payable contract1;
    address payable contract2;
    uint public x;
    uint public y;
    constructor() {
        contract1 = address(new semanticallyequivalent14());
    }
    function test()public
    {
        x = 1;
        y = 10;
        contract2.call.value(4900)();
    }

    fallback()external payable {}
}
contract Caller
{
    uint public g;
    uint public h;
    function Do(uint a) external {
        g = a;
        h = a + 1;
    }
}
