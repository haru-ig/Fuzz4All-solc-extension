pragma solidity ^0.8.0;
contract Example {
    uint x;
    uint y;
    function f() public {
        uint tmp = x + 10;
        uint tmp2 = tmp + ( tmp + 10) + x;
        uint tmp3 = tmp + tmp2 + x;
        uint tmp4 = tmp + tmp3 + ( tmp + x) + x;
        uint tmp5 = ( tmp + tmp3 + tmp4 + x) + x;
        uint tmp6 = tmp + 10 + 100 + tmp5;
    }
}
```
