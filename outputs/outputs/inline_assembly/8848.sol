pragma solidity ^0.8.0;
contract Test
{


    uint int_max = 2**36 - 1;
    uint x = 2**36 - 2;
    uint y;
    function test() public {
        x = int_max / x;
        y = x / int_max;
    }
}


pragma solidity ^0.8.0;
contract Test
{
    uint int_max = 2**36 - 1;
    uint x = 2**36;
    uint y;
    function test() public {
        x = (2**36 - 2) / x;
        y = (int_max / x) + (x / int_max);
    }
}
```
