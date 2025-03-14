pragma solidity ^0.8.0;
contract YulContract {
    function addValues3(uint a, uint b, uint c) public pure returns (uint) {
        return (a + b + c);
    }
    function test1(contract YulContract x) public pure returns (uint){
        return (x.addValues3(5, 6, 5));
    }
}
