pragma solidity ^0.8.0;
contract Test71b {
    int[] public a;
    function f() public {
        a = new int[](3);
        a.length = 4;
        a[2] = 12;
        a[3] = 34;
    }
}

pragma solidity ^0.8.0;
contract Test71c {
    int[] public a;
    function f() public {
        a = new int[](3);
        a.length = 4;
        a[2] = 12;
        a[3] = 34;
        a[3] = 35;
    }
}
