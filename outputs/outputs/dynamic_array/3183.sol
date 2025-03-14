pragma solidity ^0.8.0;
contract AssignmentModulation {
    uint a = 0;
    uint b = 0;
    uint c = 0;
    uint x1 = 0;
    uint x2 = 0;
    function getX1() public view returns (uint retVal) {
        return x1;
    }
    function getX2() public view returns (uint retVal) {
        return x2;
    }
    function doWork() public returns (uint) {
        while (b > 1) {
            x1 += 1;
            x2 += 1;
            b -= 1;
        }
        a = 0;
        if (b == 0) {
            x1 += x2;
            x2 = x1-x2;
        }
        return a;
    }
    function setReturn(uint input1, uint input2) public {
        x1 = input1;
        x2 = input2;
    }
}
