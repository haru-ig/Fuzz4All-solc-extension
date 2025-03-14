pragma solidity ^0.8.0;
contract C {
    bytes20[6] a;
    bytes12[3] b;
    function modifiesMemory(bytes12[] memory a, bytes20[] memory b) public pure returns() {
        a[0] = 0x0123455678;
    }
}
