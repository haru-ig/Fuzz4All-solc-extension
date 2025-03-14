pragma solidity ^0.8.0;
contract modifierInFunction {
    function f(uint x)  public view returns (uint) {
        if (x <= 0) {
            return x;
        }
        if (x == 1) {
            x = 2;
        }
        x = (x - 1);
        x = x * x * 2;
        if (true) {
            x = (x + 0) + 1;
        }
        if (1 == 2) {
            return x;
        }
        x = x + ((x - x) + 1) + 2;
        if (true) {
            x = x * x + 1;
        }
        return x * x * x - (x % (x - (x * 2) + 1)) + x % ((x - (x * 2) + 1)) + (x * 2) + 3;
    }
}
