pragma solidity ^0.8.0;
interface ExternalContractsExample501Interface {
    function getOperation() external returns (uint64);
}
contract ExternalContractsExample500 {
    uint56 x;
    uint56 a;
    uint56 b;
    uint56 c;
    uint56 d;
    uint56 e;
    uint56 y;
    ExternalContractsExample501Interface public externalContract;
    constructor() public {
        externalContract = ExternalContractsExample501Interface(address(this));
    }

    function doSomething() public returns (uint64) {
        uint64 value = externalContract.getOperation();
        a *= 8;
        b *= 68;
        bool x3 = x % 3 == 0;
        c *= 948;
        d *= 87;
        if(!x3) {
            b += 5;
        }
        e *= 7;
        a += c + b;
        SoMEvent(a, value);
        return value;
    }
}
```
