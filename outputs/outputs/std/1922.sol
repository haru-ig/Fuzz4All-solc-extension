pragma solidity ^0.8.0;
contract Arrays {
    uint[] internal _array;
    function test() public {
        uint[2 storage][2] memory test = new uint[2][2];
        assert(test == uint[2][2](42,77463324778));
        test[0][0] = 3;
        test[0][1] = 4;
        test[1][0] = 10;
        test[1][1] = 20;
        _array = test[0];
        assert(_array == uint[2](10,20));
        _array = test[1];
        assert(_array == uint[2](42,77463324778));
    }
}
