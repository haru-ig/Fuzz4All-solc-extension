pragma solidity ^0.8.0;
interface BBase is ABase {
    function g() virtual external pure;
}
BBase bBase = new BBase();
pragma solidity ^0.8.0;
library A {}
A aBase = new A();
bBase.g();
bBase.f();
aBase.f();
aBase.g();
