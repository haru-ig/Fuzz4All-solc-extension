pragma solidity ^0.8.0;

contract A {
    constructor (bytes12[12] b) public {
        simple A;
    }
}
contract B is A {
}
contract C is B {
}
contract D {
    function() external payable {}
}
contract E {
    constructor() {
        new D();
    }
}
