pragma solidity ^0.8.0;
contract C {
    function c() public {
        uint256[] memory a;
        a = new uint256[](3);

        a[0] = 38;
        a[1] = 39;
        a[2] = 40;
        a[3] = 41;


        a = new uint256[](30);
        a[1] = 38;
        a[2] = 39;
        a[3] = 40;
        a[4] = 41;

        a = new uint256[](42);
        a[0] = 38;
        a[1] = 39;
        a[2] = 40;
        a[3] = 41;
        a[4] = 42;

    }
}
