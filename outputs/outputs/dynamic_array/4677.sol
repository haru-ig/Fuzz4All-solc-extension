pragma solidity ^0.8.0;
contract Tester2 {
    function test() public returns (address payee, uint quantity, uint quantityMin, uint quantityMax, uint quantityStep, uint quantityIncrement, bytes32 name, uint data, uint data2[10], uint data3, uint data4) {
        (payee, quantity, quantityMin, quantityMax, quantityStep, quantityIncrement, name) = (address payee, uint, 2, 4, uint, 3, 'Test', uint(uint256(uint16(1))), uint(uint256(uint16(2))), uint(uint256(uint16(3))), uint(uint256(uint16(4))), uint(uint256(uint16(5))), uint(uint256(uint16(6))), uint(uint256(uint16(7))), uint(uint256(uint16(8))), uint(uint256(uint16(9))));
        (data,quantity,quantityMin,quantityMax,quantityStep,quantityIncrement,data3,data4) = (uint,1, uint,3,uint,3,uint,uint);
    }
}
function main(string[] args) public returns (bool) {
    Tester2 myContract = new Tester2();
    return (myContract.test());
}
