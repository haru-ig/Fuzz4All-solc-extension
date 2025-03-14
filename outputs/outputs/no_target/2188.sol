pragma solidity ^0.8.0;
contract Modifications2_SEM9 {
    constructor(uint i, uint j) public {
        a[j] = uint(i > 0);
    }
    function f() public view returns (uint) {
        return uint(a[0] > 0);
    }
    [32323 < 12] uint8 public a;
}
pragma solidity >= 0.8.0;
contract Modifications2_SEM9 {
    [32323 < 12] uint8 public a;
}
