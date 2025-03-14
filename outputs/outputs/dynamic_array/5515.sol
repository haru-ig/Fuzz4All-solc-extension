pragma solidity ^0.8.0;
contract Test72 is ITest71 {
    uint256 public num1 = 0;
    constructor() {
        num1 += 1;
    }
    function bar() public pure virtual returns(int32) {
        return 1;
    }
    function setOne(bool v) public {
        num1 += v;
    }
}

pragma solidity ^0.8.0;
contract Test73 {
    struct B {
        uint256 x;
    }
    B[] public b1;
    mapping(uint256 => bool) public v1;
    mapping(uint256 => uint256) public v2;
    uint256 public v3;
    mapping(uint256 => B) public v4;
    uint256 public v5;
    ITest71 public _test2;

    uint256 arrayMax;
    struct S {
        uint16 field1;
    }
    S[] public s1;
    uint8 public s2;


    constructor(uint256 _arrayMax) public {
        arrayMax = _arrayMax;
        for (uint256 i = 0; i <= arrayMax; i++) {
            v1[i] = true;
        }
    }


    function fn(B[] memory b2, S[] memory s2, uint8 s3) public {
        v1[1] = true;
        _test2.bar();
    }
}
