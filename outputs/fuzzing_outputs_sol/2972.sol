pragma solidity ^0.8.0;
contract Caller {
    address payable x;

    function setX(address payable a) public {
        x = a;
    }

    function callX() public payable {
        callX(0);
    }
    function callX(uint i) public payable {
        x.call{value: 0}(0, 0);
    }
}
