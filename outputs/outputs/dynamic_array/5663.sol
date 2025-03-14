pragma solidity ^0.8.0;
contract Test71b {
    int[] public a;
    function f() public {
        a = new int[](0);
        a[3] = 34;
    }
}
