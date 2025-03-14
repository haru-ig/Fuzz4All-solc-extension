pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample26 {
    uint public i;
    function increaseByOne2(uint d) public {
        require(i >= 0);
        i += d;
    }
    function increaseBy1002(uint b) public {
        require(i >= 0);
        i += 100 * b;
    }
    function increaseBy5002(uint a) public {
        require(i >= 0);
        i += 500 * a;
    }
    function increaseBy50002(uint j) public {
        require(i >= 0);
        i += 5000 * j;
    }
    function increaseBy252(uint c) public {
        require(i >= 0);
        i += 25 * c;
    }
}

```
