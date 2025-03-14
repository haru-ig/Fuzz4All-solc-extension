pragma solidity ^0.8.0;
contract B {
    uint256 const WATCHER1 = 1;
    uint256 public _watcher = WATCHER1;
    function set_watcher(uint256 watcher)external {
        _watcher = watcher;
    }
}
contract A {
    B b;
    uint256 a;
    constructor() {
        b = new B();
    }
    fallback () external {
        a = b.a;
        b._incrementNumberB();
    }
}
