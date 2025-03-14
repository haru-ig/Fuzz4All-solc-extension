pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Test{
    struct Data{ uint8 ab; }
    function f(Data memory d) public payable pure returns (uint8 x){ x = d.ab; }
}
