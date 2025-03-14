pragma solidity ^0.8.0;
interface Child1Interface {
    function g() external pure returns (uint n);
}

contract Child is Child1Interface, ChildInterface2 {
    constructor(uint n) Child1Interface.g(), ChildInterface2.g() {

    }
}
