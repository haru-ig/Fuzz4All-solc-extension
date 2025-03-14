pragma solidity ^0.8.0;
contract ArrayMutator{
    uint256[] public marray;
    function test(uint256 x, uint256 i) public returns(uint256) {
        marray[i] = x;
        uint256 x_to_pointer = marray[i];
        return x_to_pointer;
    }
    modifier test2() {
        test(marray[5], 1);
        _;
    }
    function addTest(uint256 i) public test2 {
        marray[i] += 10;
        if (marray[i] % 3 == 0) {
            marray[i] = (marray[i] + 2) / 3;
        }
    }
}

```
