pragma solidity ^0.8.0;
contract Emulator2 {

    uint y;
    function init() public {
        x = y+x;
    }
    function add(uint x,uint y) public pure {
        uint ret = x+y;
        ret = x+x;
        ret;
    }
}
```
```
> npx truffle solidity-to-yul x test/contracts/Emulator1.sol
```
