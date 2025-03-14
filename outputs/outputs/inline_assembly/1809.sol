pragma solidity ^0.8.0;
contract Example{
    uint256 private x;
    uint32 public x1;
    uint64 public x2;
    uint128 public x3;
}
contract Main {

    Example private a;
    function change(){
        a.x += 10;
        a.x1 += 30;
    }
    function change1(){
        a.x += 200;
        a.x2 += 400;
        a.x3 += "400".toUint64();
        a.x3 = 103.toUint128();
    }
}
```
