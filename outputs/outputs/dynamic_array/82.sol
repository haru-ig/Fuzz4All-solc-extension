pragma solidity ^0.8.0;
contract A {
    uint256[][] bArray;
    uint256[][][] bArray2;
    uint256[][][] bArray1;
    uint256 data;
    uint256 test;
    uint256 test2;
    uint256 test3;
    uint256 test4;
    uint256 test5;
    uint256 test6;
}

```
</pre>

## Example 2

```
pragma solidity ^0.8.0;

contract A {
    bool[] public arr;
}

contract B {
    function setArr(A.arr storage x) public {}
}

contract C {
    function a(B.arr storage x) public {
        B.setArr(x);
    }
}
```
