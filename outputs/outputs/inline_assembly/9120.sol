pragma solidity ^0.8.0;
library Lib {
    function getResult(uint x) public pure returns (uint) {
        return (x + (x << 32));
    }
}
contract C {
    function getResult(uint x) public view returns (uint y) {
        uint y = x.add(x);
        y = y.add(y);
        y = y.add(y);
        y = y.add(y);
        y = y.add(y);
        y = y.add(y);
        y = y.add(y);
        y = y.add(y);
        y = y.add(y);
        y = y.add(y);
        y = y.add(y);
    }
}

```
