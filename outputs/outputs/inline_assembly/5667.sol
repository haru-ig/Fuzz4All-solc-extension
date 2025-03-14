pragma solidity ^0.8.0;
contract ConstantAccessBlock5Mutator4a {
    uint public constant _var = 1;
    uint public constant _var2 = 1;
    uint public constant _var3 = 3;
    constructor() {
    }

    function test() public view returns(uint) {
        uint x = 1;
        x *= 10;
        x -= _var;
        x -= _var2;
        x -= _var3;
        uint z = x+(_var2*1);

        z -= _var;
        z -= _var2;
        return x / 2;
    }
}
pragma solidity ^0.8.0;
contract ConstantAccessBlock5Mutator4b {
    uint public constant _var = 1;
    uint public constant _var2 = 1;
    uint public constant _var3 = 3;
    constructor() {
    }

    function test() public view returns(uint) {
        uint x = 1;
        x *= _var;
        x *= _var2;
        x *= _var3;
        uint z = x+(_var2/2);

        z *= _var;
        z *= _var2;
        z *= _var3;
        return x / 2;
    }
}
```

___
## Next challenges will be available on the 3-June (6-June) deadline.
