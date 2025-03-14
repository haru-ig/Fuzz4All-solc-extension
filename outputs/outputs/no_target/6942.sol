pragma solidity ^0.8.0;
contract TestPrecompiled44595 {
    function f() public payable {
        bool b;
        assembly { b := eq(100, 100) } x = b;
        b = call.value(1, this, f);
        assembly { b := eq(100, 100) } x = b;
    }
}
contract TestPrecompiled44596 {
    function f() public fallback() {}
}
contract TestPrecompiled44597 {
    function f() public pure { x = -18087620524171812465815604372791966512; }
    uint8 private x;
}
contract TestPrecompiled44598 {
    function f() public payable pure { x = -18087620524171812465815604372791966512; }
    uint8 private x;
}
contract TestPrecompiled44599 {
    function f() public pure { x = -18087620524171812465815604372791966512; }
    uint8 private x;
}
contract TestPrecompiled44600 {
    function f() public pure { x = -18087620524171812465815604372791966512; }
    uint8 private x;
}
contract TestPrecompiled44601 {
    function f() public pure { x = -18087620524171812465815604372791966512; }
    uint8 private x;
}
