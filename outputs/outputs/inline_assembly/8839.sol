pragma solidity ^0.8.0;
contract Test
{
    uint int_max = 2**36 - 1;
    uint x = 2**36 - 1;
    uint z;
    modifier test() {
        emit(z,x);

        x /= int_max;
    }
    function test() public {
        test();
    }
}
