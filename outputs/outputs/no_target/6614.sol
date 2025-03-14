pragma solidity ^0.8.0;
contract modifierWithParam {
    function f(uint x)  public view returns (uint) {
        if (x == 0) {
            revert();
        }
        return x;
    }

    function g(uint x) public view returns (uint) {
        if (x == 0) {
            revert();
        }
        x = (x - 1);
        x = 1 + 2;
        return (x * 3 + 2 * (x + x+ 1));
    }
}
