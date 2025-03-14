pragma solidity ^0.8.0;
contract Cast_equivalent {
    uint256 public num;
    constructor(uint256 _num) {
        num = div( _num, 3 );
    }
    function div(uint256 a, uint256 b) public pure returns (uint256) { return a / b;  }
}
