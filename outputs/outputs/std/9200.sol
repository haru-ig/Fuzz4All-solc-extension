pragma solidity ^0.8.0;
contract MutatingContract {
    uint256 public array;
    uint256 public constant my_value = 321;
    constructor() {
        array = my_value;
    }
    function mod(uint z1, uint z2) public view returns (uint) {
        return z1 - (z1 % (uint)z2);
    }
    function mod2(uint z) public view returns (uint) {
        return z + 1;
    }
    function setArr(uint z) public {
        array = z;
    }
}
