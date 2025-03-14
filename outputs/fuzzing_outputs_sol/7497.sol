pragma solidity ^0.8.0;
contract Caller {
    address payable c;
    constructor(address payable a) public {
        c = a;
    }
    function f() public {
        c.transfer(address(this).balance);
    }
}
