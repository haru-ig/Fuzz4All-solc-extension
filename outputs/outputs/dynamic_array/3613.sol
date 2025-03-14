pragma solidity ^0.8.0;
contract C {
    function c() public {
        uint256[] memory a;
        a[1] = a;
        a[2] = a;
        a[3] = a;
        a[a.length] = a1;
        a = new uint256[](3);
        a[1] = a;
        a[2] = a;
        a = new uint256[](3);
        a[1] = a;
        a = new uint256[](3);
        a[1] = a;
        a = new uint256[](3);
        a = new uint256[](3);
        a = new uint256[](3);
        a = new uint256[](111);
    }
}
