pragma solidity ^0.8.0;
contract A{
    uint x;
    function A() {
        x = Lib.add(I(0));
    }
    function _transfer() {}
    function accept() public {
        I(0).add2(x);
        _transfer();
    }
}
