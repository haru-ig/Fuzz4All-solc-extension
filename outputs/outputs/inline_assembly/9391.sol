pragma solidity ^0.8.0;
contract B {
    address a;
    uint256 constant d = 10;
    uint constant r = 10;
    function b(int x, uint y) public returns (int,uint) {
        a.transfer(getA());
        return (x,y);
    }
    function getA() public returns (address){
        return a;
    }
}
