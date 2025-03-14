pragma solidity ^0.8.0;
contract ModMutated {
    uint a;
    uint x;


    function update(uint y) private {
        a = uint(y);
    }
    function updatex() private {
        x = a;
    }
    function changeA() public {
        a = uint(1);
    }
    function getX() public returns(uint) {
        get(x);
    }
    function get() public returns(uint) {
        return a;
    }
    function f1() public {
        update(x);
        get(x);
        changeA();
        updatex();
        getX();
    }
}
