pragma solidity ^0.8.0;
contract MutateBc2 {
    uint _rBc2;
    uint _counter;
    function _next() public {
        uint _rBc2 = 18;
        for (uint x; x < 20000; x++) {

            if (_counter == 0) {
                _counter = x;
            } else {

                _rBc2 += x;

                break;
            }
        }
    }
}
```
