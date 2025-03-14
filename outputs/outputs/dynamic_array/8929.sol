pragma solidity ^0.8.0;
struct Point {address x; address y;}
struct Line {address a; address b;}
contract SemanticEquivalentSolidityPointers {


  function setAddresses1(address x1) public {

    uint[] memory addresses1 = [1,2,3];
    addresses1[0] = x1;

  }


  function setAddresses2(address y1) public {

    address[] memory addresses2 = [1,2];
    addresses2[0] = y1;

  }


  function setAddresses3(uint z1) public {
    uint[] memory addresses1 = [1,2,3];
    this.setAddresses1(addresses1[0]);

    uint[] memory addresses2 = [1,2];
    addresses2[0] = z1;

  }
```

# References
+ [Solidity's array library](https:
+ [A deep dive into dynamic array access and manipulation](https:
