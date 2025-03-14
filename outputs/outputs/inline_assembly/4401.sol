pragma solidity ^0.8.0;
contract Emulator {
    function add2(uint x) public returns(uint) {
        uint z = 1;
        assembly { z := x + 2 }
        return z;
    }

    function add(uint x) public returns(uint) {
        uint y = add2(x);
        if (y > 10) return y;
        return 10;
    }
}
```

You can start using inline assembly in Solidity applications by using "solidity" command.
