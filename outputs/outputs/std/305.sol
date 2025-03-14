pragma solidity ^0.8.0;
contract Fib {
    uint[5] private a;

    function getA() public view returns (uint[5] memory) {
        for (uint i = 0; i < 5; i++) {
            a[++i] = uint(a[i - 1] + a[i - 2]);
        }

        return a;
    }
}
