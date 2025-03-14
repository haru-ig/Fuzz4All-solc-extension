pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations35 {
    uint[10] a;
    constructor(uint _x) public {
        a[1] = _x;
        uint[10] memory new_val;
        new_val[1] = _x;
        a = new_val;
        a = new uint[](10);
        uint[10] memory a_var = new uint[](1000);
        a = a_var;
        a = a_var.sub(1);
        a = a_var.sub(__y_);
        a = a_var.sub(a);
        a = a_var.sub(a);
        a = a_var.sub(a);
        a = a_var.sub(a);
        x = 1;
        uint(x)();
        uint()(a[1]);
        uint(a[1]);
        uint(...,,a[1],__,a[1],a[1],a[1]);
        uint(a[1](),a[1]);
        uint(a[1]);
        uint(a[1],a[1],a[1],a[1],a[1],a[1],a[1],a[1],a[1],x);
        uint(a[1],a[1],a[1],a[1],a[1],a[1],x);
        uint(a[1],a[1],a[1],a[1],a[1],a[1],a[1],a[1],a[1],x);
        uint(a[1]);
        uint(__,a[1],a[1],a[1],a[1],a[1],a[1],a[1],a[1],x);
        uint(x);
        uint(a[1](),a[1]);
        uint(a[1]);
        uint(a[1](),a[1]);
        a[1] = 1;
        uint[] memory b = new uint[](33);
        a = a.concat(uint[](b));
        b[1] = 2;
    }
    function __y_() internal pure returns (uint) {
        return
