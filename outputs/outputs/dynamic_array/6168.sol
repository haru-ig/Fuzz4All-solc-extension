pragma solidity ^0.8.0;
 contract Test90008 {
    uint256[] public a;

    address payee;
    constructor () public {
        a = [address(this), address(this)];
        a[1] = address(this);
        delete a[1];
        a[0].call.value(1000)();
        delete a[0];
        payee = a[1];
        a[1].call.value(5000)();
        delete a[1];

    }
    fallback () external {
    }
    event Mutate ();
}
