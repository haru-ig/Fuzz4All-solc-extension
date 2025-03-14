pragma solidity ^0.8.0;
contract Test3 {
    mapping(uint => uint[]) s3;
    constructor() {
        uint[4] memory i;
        i[0] = 0;
        s3[0] = i;
    }
    function set1(uint[] memory v) public {
      s3[0] = v;
    }
}

```
