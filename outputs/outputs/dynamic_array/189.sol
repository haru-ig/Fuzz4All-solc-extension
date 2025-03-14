pragma solidity ^0.8.0;
interface I3 {
    function setFoo(int);
}
contract C4 {
    I3 public x;
    constructor() {
        x.setFoo(Foo.First);
    }
}
