pragma solidity ^0.8.0;
contract R {
    uint[] public arr;
    function f() public {
        uint x = 0;
        uint y = 0;
        if (x.eq(y)) {
            this.arr.push(0);
            this.arr.push(1);
        }
    }
}
