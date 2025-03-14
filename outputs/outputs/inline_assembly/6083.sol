pragma solidity ^0.8.0;
struct Immutable {
    uint256 x;
}
contract MutatedSemanticallyEquivalentAssemblyExample10 {
    Mutable memory x;
    function main() public pure {
        Immutable memory x;
        x.x = 5;
        x.x++;
    }
}
contract MutatedSemanticallyEquivalentAssemblyExample11 {
    address[10] memory f;
    function main() public pure {
        Immutable memory x;
        f[8] = address(x);
    }
}
contract MutatedSemanticallyEquivalentAssemblyExample12 {
    address[10] memory f;
    function main() public pure {
        Immutable memory x;
        w = 5;
        f[5] = address(x);
    }
    address w;
}
```
