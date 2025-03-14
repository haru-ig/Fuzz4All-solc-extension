pragma solidity ^0.8.0;
contract F6{
    uint[] memory xs;
    uint[] memory ys;
    constructor(uint x, uint y) {
        xs.push(x);
        ys.push(y);
        ys.push(x);
    }

    function mul(uint x, uint y) public {
        xs.push(
            x * (x - 1)
        );
        xs.push(x * (y - 2));
        ys.push(x * y);
    }
}
```
