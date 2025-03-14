pragma solidity ^0.8.0;
contract MutatedMutatedMutated {
    uint256 public test = 5;
    struct S { uint256 a; uint256 b; }
    function myInit2(S memory a) public {
[Truncated]
2. Change `s.a` to `s.b`.
3. Check that `s.a` is still 7.
```

The problem appears only in Solidity 0.8.x. It's fine in 0.5.x, the same as 0.5.9 and 0.4.x. So it should be considered a regression in 0.8.0.

For the record, here is a compilation error generated in Solidity 0.8.x (which is ok):
<issue_comment>username_1: I also experienced this problem. Indeed the function `getBalanceAt` return an `address payable`.
<issue_comment>username_2: Same issue here. I have tried changing from 0.4.28 (I think) to 0.8.0 (I am still running 0.4.28) and 0.8.x produces this error
<issue_comment>username_3: same here
<issue_comment>username_4: The fact that there are more errors coming from 0.4 vs 0.8 is a good sign for 0.8.0. I have had to revert to 0.4.28 due to this.
<issue_comment>username_5: I was able to reproduce this issue in my code:
```solidity
contract C {
    using Array for Array.ufixed[]
    uint256[] public arr;
    function fn() public {
        uint256[] memory test = arr

        uint256[] memory test3 = Array.from(uint256[](0));
        uint256[] memory test4 = Array.from(uint256[0]);
        uint256[] memory test5 = Array.from(address[](0));
        uint256[] memory test6 = null;
        uint256[] memory test7 = Array.from(s.test);
        uint256[] memory test8 = Array.from(address(s.test));
        uint32[] memory test9 = Array.from(uint32[](0));
        uint32[] memory test10 = Array.from(uint32[0]);
        uint32[] memory test11 = Array.from(address[](0));
        uint32[] memory test12 = null;
        uint32[] memory test13 = Array.from(s.test);
        uint32[] memory test14 =
