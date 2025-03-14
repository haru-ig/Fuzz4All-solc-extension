pragma solidity ^0.8.0;
struct Test05 {
    uint[] b;
}
contract Test06 {
    Test05 memory test;
    function Test06() internal {
        test.b.push(10);
    }
}


```
