pragma solidity ^0.8.0;
contract A {
    constructor() {
    }
    function f() public payable {}
}
contract Bis {
    constructor(){
    }
    function g() public {
        fallback();
    }
}
contract B is A, Bis {
    function f() public payable {
        fallback();
    }
    function fallback() public payable {
    }
}




contract Bis2 {
    function f() public payable {
    }
    fallback();
}
