pragma solidity ^0.8.0;
contract Test71 {
    int[] public a;
    function f() public {
        a = new int[](3);
        a[3] = 34;
    }
}
