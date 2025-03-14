pragma solidity ^0.8.0;
contract G9 {
    pragma gas 300000;
    function f() public pure {

        uint[] memory a = new uint[](100000);
        for (uint i = 0; i < 100000; ++i) {
            a[i] = 1;
        }
        for (uint i = 0; i < 100000; ++i) {
            a[i] = 2;
        }
    }
}
