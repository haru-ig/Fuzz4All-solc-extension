pragma solidity ^0.8.0;
contract Contract1
{
    uint storedData;
    function setValue(uint input) public {
        storedData = input;
        address(mutator1.getValue()).call.value(1 ether)();
        address(mutator2.getValue()).call.value(2 ether)();
        address(mutator3.getValue()).call.value(3 ether)();
        address(mutator4.getValue()).call.value(4 ether)();
    }
    function getValue() public view returns (uint) {
        return storedData;
    }
}
