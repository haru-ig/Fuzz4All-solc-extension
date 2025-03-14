pragma solidity ^0.8.0;
contract Test3 {
    struct S {
        string foo;
    }
    S[] memory a1;
    S[] memory a2;
    struct B {
        address addr;
        uint32 val;
    }
    mapping(address => B) memory b1;
    mapping(address => B) memory b2;
    B[] memory c1;
    B[] memory c2;
    constructor() {
        a1.push(S());
        a1.push(S());
        a2.push.value(2000000000}(S({foo:"renamed"})));
        a2.push.value(2000000000}(S({foo:"renamed"})));
        b1.initialize.value(2000000000)(address(this), 2);
        b1.initialize.value(2000000000)(address(this), 2);
        b2.initialize.value(2000000000)(address(this), 2);
        b2.initialize.value(2000000000)(address(this), 2);
        c1.push.value.value(2000000000)(B({addr:address(this), val:2}));
        c1.push.value.value(2000000000)(B({addr:address(this), val:2}));
        c2.push.value.value(2000000000)(B({addr:address(this), val:2}));
        c2.push.value.value(2000000000)(B({addr:address(this), val:2}));
    }
}
