pragma solidity ^0.8.0;
contract B {
    uint z;
    uint store;
    constructor(uint initialValue) public {
        z = initialValue;
        store = initialValue + 1;
    }
    function set(uint _z) public {
        if (store == 0) {
            z = _z;
            store = _z + 1;
        }
    }
    function func() public payable {
        uint _z = 3;
        set(_z);
        if (2 == 3) {
            z += 1;
            set(z);
        } else {
            z += 3;
            set(z);
        }
    }
}

```
