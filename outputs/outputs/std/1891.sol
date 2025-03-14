pragma solidity ^0.8.0;
contract Arrays {
    uint public counter;
    uint constant MAX_VALUE=999;
    address constant OWNER=0x0000000000000000000000000000000000000000;
    modifier onlyOwner() {
        require(msg.sender==OWNER);
        _;
    }
    function increment() public onlyOwner {
        counter ++;
    }
    function decrement() public onlyOwner {
        counter --;
    }
}
