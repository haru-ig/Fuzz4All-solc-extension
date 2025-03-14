pragma solidity ^0.8.0;
contract Math {
    bytes32 public constant FACTOR = 0x789e91D06569917BA0274F892AA0473D358CEB1536E9EAC0BA11E562EABEF113;
    uint256 public num1;
    uint256 public num2;
    modifier Add_num_1_2(uint256 num_1, uint256 num_2) {
        num1 = num_1;
        num2 = num_2;
        _;
        num1 = 0;
        num2 = 0;
    }
    function sum_num_1_2() public view returns (uint256) {
        return num1 + num2;}
}
