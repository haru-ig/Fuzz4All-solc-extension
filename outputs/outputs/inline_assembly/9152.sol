pragma solidity ^0.8.0;
contract C{
    uint result = 0;
    function getResult(uint x, uint y) public view returns (uint) {
        result = x;
        x = 1*x*x;
        x = x*10;
        x = x/10;
        x = x * (y / 10  / 10);
        x = x + 10 / 10;
        x = x * 100 + 10 / 10;
        x = x * x + x;
        x = x + x + 20 + (x << 20) + 1;
        x = 1 + x;
        return (x);
    }
    constructor(){
        result = result + 1;
    }
}
```
```bash
$ remix deploy -g
$ remix console
```
