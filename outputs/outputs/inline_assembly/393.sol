pragma solidity ^0.8.0;
contract M92 {
    uint public b;
    address public g;
    constructor() {
        b = 1;
        g = 34;
    }
    function divide() public {
        b = b-(2*b);
    }
    function modify() public {
        b=b+b*(b / 2);
    }
    function double() public {
        b = b+b;
    }
    function getaddr() public view returns(address){
        return g;
    }
}
