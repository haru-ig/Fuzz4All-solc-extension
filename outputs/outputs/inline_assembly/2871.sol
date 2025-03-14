pragma solidity ^0.8.0;
contract C {
    uint z;
    mapping(uint => uint) store;
    function set(uint _z) public {
        if (store[z] == 0) {
            z = _z;
            store[z] = _z + 1;
        }
    }
    function func() public payable {
        uint _z = 2;
        set(_z);
        if (1 == 1) {
            z += 1;
            set(z);
        } else {
            z += 2;
            set(z);
        }
    }
}

pragma solidity ^0.8.0;
contract D {
    uint z;
    mapping(uint => uint) store;
    function set(uint _z) public {
        if (store[z] == 0) {
            z = _z;
            store[z] = _z + 1;
        }
    }
    function func() public payable {
        uint _z = 1;
        set(_z);
        if (false) {
            z += 1;
            set(z);
        } else {
            z += 2;
            set(z);
        }
    }
}

```
```bash
[~/dev/ethereum]# npm install -g truffle

[~/dev/ethereum]# npm install
```


```bash
[~/dev/ethereum]# truffle migrate --network remix

[~/dev/ethereum]# truffle test

Truffle v5.0.58 (core: 5.0.58)
Solidity v0.8.12 (solc-js)
Node v12.18.0
```

https:
