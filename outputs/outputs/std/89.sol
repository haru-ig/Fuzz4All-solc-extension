pragma solidity ^0.8.0;
contract MutateFunction {
    function _add_int_int(int x, int y) private pure returns (int) {
        (x,y) = (y,x);
        return x + y;
    }
    int sum_int_int(int x, int y) public pure returns (int) {
        return _add_int_int(x,y);
    }
}
