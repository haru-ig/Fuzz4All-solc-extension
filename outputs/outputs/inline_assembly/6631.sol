pragma solidity ^0.8.0;
contract MixedContactsExample97 {
    uint256 a;
    uint256 b;
    uint256 c;
    uint256 d;
    uint256 e;
    uint256 f;
    uint256 a0;
    uint256 b0;
    uint256 c0;
    uint256 d0;
    uint256 e0;
    uint256 f0;
    function doSomething() public {

        a0 = a;
        b0 = b;
        c0 = c;
        d0 = d;
        e0 = e;
        f0 = f;
        uint256 i = 1;
        assembly {
            let i3 := add(i, 1)
            swap(b, i)
            swap(b, i3)
            swap(b, add(i3, 1))
            swap(b0, i)
            swap(b0, i3)
            swap(b0, add(i3, 1))
            swap(b0, add(i3, 2))
            swap(b0, add(i3, 3))
            swap(b0, add(i3, 4))
            swap(b0, add(i3, 5))
            swap(b0, i3)
            swap(b0, add(i3, 6))
            swap(b0, add(i3, 7))
            swap(b0, add(i3, 8))
            swap(b0, add(i3, 9))
            swap(b0, add(i3, 10))
            swap(b0, add(i3, 11))
            swap(b0, add(i3, 12))
            swap(b0, add(i3, 13))
            swap(b0, add(i3, 14))
            swap(b0, add(i3, 15))
            swap(b0, i3)
            swap(b0, add(i3, 16))
            swap(b0, add(i3, 17))
            swap(b0, add(i3, 18))
            swap(b0, add(i3, 1
