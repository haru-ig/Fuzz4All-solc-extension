pragma solidity ^0.8.0;
contract Mutator{
    uint y;
    bytes32 public foo;
    function func(uint256 x){
        y = x;
    }
    function update() public view returns(bytes32){
        return foo;
    }
    constructor(bytes32 b){
        foo = b;
    }
    function funcToMutate(){
        func(x);
    }
    modifier onlyOwner {
        require(msg.sender == owner, "Caller is not the owner");
        _;
    }



}
