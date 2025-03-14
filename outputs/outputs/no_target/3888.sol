pragma solidity ^0.8.0;
 contract C {
     constructor() {
     }
 }
address A = C();
contract D is C {
    A = A();
}
contract B {
    a = D();
    a.change();
}
