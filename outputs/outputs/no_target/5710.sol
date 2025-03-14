pragma solidity ^0.8.0;
contract Baz {
    uint public x = 1;
    uint public y = 1;
    Baz xref() public pure returns (uint){return x;}
}
contract Baz {
    function doBar(uint n, uint value) public pure { }
    uint public z;
    uint public y = 1;
    Baz xref() public pure returns (uint){
        return x/2-2*y;
    }
    constructor() public { }
}
