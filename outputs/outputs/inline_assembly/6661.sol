pragma solidity ^0.8.0;
contract MixedContactsExample102 is MixedContactsExample101 {
    function doSomething() public override returns (uint64) {
        a = a * 2;
        b = b * 42;
        bool x3 = x % 2 == 0;
        c = c * 89;
        d = d * 66;
        if(x3) {
            y = e;
        }
        e = e * 2;
        a = a * 50 + c;
    }
}
