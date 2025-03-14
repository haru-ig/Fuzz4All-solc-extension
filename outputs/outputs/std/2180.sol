pragma solidity ^0.8.0;
contract B is A {
    modifier onlyOwner2 {
        require(msg.sender == owner, "Caller is not the owner");
        _;
    }
}
contract C is B {
    uint x;
    uint y;
    function call() public onlyOwner2 {
        owner.transfer(address(30));
    }
    function getFoo(){
        return x;
    }
}
