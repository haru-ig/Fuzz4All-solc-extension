pragma solidity ^0.8.0;
contract Test1805 {
    uint256[4] public a;
    uint p;
    constructor() {
        a[0] = 1 / 0;
        a[1] = 1 / 0;
        p = 200;
    }
    function setP(uint num) public {
        p = num;
    }
    function getP() public view returns (uint) {

        return p;
    }
    function getA() public view returns (uint) {
        return a[2] / a[3];
    }
}
