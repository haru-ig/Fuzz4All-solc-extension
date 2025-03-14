pragma solidity ^0.8.0;
contract MyContract {
    mapping (uint => uint) public x;
    function changeToTrue(uint x) public onlyOwner {
        x[x.id()] = x.id();
    }
    modifier onlyOwner {
        require(msg.sender == owner,"AssertionFailed");
        _;
    }
}
