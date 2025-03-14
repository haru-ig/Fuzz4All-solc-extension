pragma solidity ^0.8.0;
contract C1 is C2 {
    uint256 public b1;
    uint256 public b2;
    uint[] public v4;
    function multiply(uint a, uint b) public payable {
        v2[1] = b;
        v3[2] = a*b;

        b1 = uint(address(this).code);
        b2 = uint(this.v2);
        v4[3] = 100*a*b;

        b2 = 100*a;
        v2[1] = 100*b;
        v3[2] = 100*a*b;
    }
}
