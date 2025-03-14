pragma solidity ^0.8.0;
contract Test {
    uint[] public dynArr;
    void modifyTest() public {
        dynArr.push(3);
        dynArr.push(9);
    }
}
