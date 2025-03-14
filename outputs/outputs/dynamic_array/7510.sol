pragma solidity ^0.8.0;
contract Test42_DynamicArrayMutated {
    address[5] admin;
    address addr;
    constructor () public {
        addr.call.value(address(this).balance)();
        admin[100].call();
        address memory a;
        a.call.value(address(this).balance)();
        admin[0].call;
        addr.call;
        admin[42].call;
    }
    function method() public {
        admin[42] += 1;
    }
}
