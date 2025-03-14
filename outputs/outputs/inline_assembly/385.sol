pragma solidity ^0.8.0;
contract M9e {
    uint public b;
    constructor() {
        b = 1;
    }
    function divide() public view returns (uint b) {
        b = b-(2*b);
        return (b);
    }
    function modify() public view returns (uint b) {
        (b,b)= (b+b/(2));
        return (b);
    }
    function double() public view returns(uint) {
        return (b+b);
    }
}
