pragma solidity ^0.8.0;
contract Cast_equivalent_4 {
    uint32 public num;
    uint16 public num1;
    constructor(uint _num, uint _num1) {
        num = uint32(_num);
        castNum(num1);
    }
    function castNum(uint _num) internal returns (uint32 castNum) {
        castNum = uint32(_num);
    }
}
