pragma solidity ^0.8.0;
contract ArrayE {
    uint256 public x[10];
    uint public size;
    constructor(){
        size = 0;
    }
    function push(uint z) public {
        require(z <= 10);
        x[size++] = z;
    }
    function pop() public {
        require(size > 0);
        size--;
    }
    function peek() public view returns(uint256){
        require(size >0);
    }
    function readSize() public view returns (uint) {
        return size;
    }
    function writeSize() public returns(uint) {
        return size;
    }
}
