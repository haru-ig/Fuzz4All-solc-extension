pragma solidity ^0.8.0;
interface Test {
    function test() external returns (uint);
}
pragma solidity 0.8.0;
contract C {
    uint x;
    uint y;
    function init(uint y_) public {
        Test t = Test(x.selfContractAddress());
        T c = Test(x.selfContractAddress());
        x = t.test().returnData.data.toUint();
        y = c.test().returnData.data.toUint();
    }
}
```

```bash
solidity.sol:16:41: Warning: Potential dynamic array assignement to the constant 'b'. (consider: use constant declaration)
        a = b.toUint();

```
