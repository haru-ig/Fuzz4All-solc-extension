pragma solidity ^0.8.0;
contract Test1804F {
    function foo() public {
        uint[23] memory array = new uint[](2);
        assert(array.length == 2);
        array[0] = 0;
        assert(array.length == 2);
        array[1] = 1;
        array[0] = 2;
        assert(array.length == 2);
    }
}
