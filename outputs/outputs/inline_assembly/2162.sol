pragma solidity ^0.8.0;
contract OldVersionOfNew
{
    constructor() {}
    function updateContract(uint x) external {
        NewVersionOfSame.doIt(x);
    }
}
```
```
pragma solidity ^0.8.0;
contract NewVersionOfSame
{
    function doIt(uint x) public pure returns (uint y) {
        uint t;
        uint z = 639;
        uint w = 879;
        z = x;
        t = 7 / z;
        y = t;
        assert(y == 1);
    }
}
```
```
pragma solidity ^0.8.0;
contract OldVersionOfNew
{
    constructor() public {}
    function updateContract(uint x) external {
        NewVersionOfSame.doIt(x);
        NewVersionOfSame.doIt(x);
    }
}
