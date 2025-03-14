pragma solidity ^0.8.0;
contract Test75 {
    struct S { uint256 a; }

    uint256[] public a;
    function f() public returns (uint256) {
        S memory x = S(1234567890);
        uint256[] memory arr = [ 1111, 2222, 3333 ];
        for (uint i = 0; i < 2; i++) {
            a[1111] = arr[0];
            if (f() == 1111) {
                return arr[0];
            }
        }
    }
}
