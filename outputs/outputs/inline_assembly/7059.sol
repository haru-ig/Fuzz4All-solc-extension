pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample205SemialgebraicEquiv {
    uint256 public counter;
    mapping(uint256 => bool) public test;
    constructor() {
        setCalled(_msgSender());
        test[counter] = true;
    }
    function sub_() public {
        counter--;
    }
   function test_() public {
      counter--;
      test[counter] = true;
   }
   function test____() public {
      counter--;
      test[counter] = true;
   }
    function subTest_() public returns (uint256) {
        return test[counter];
    }
    address public contractAddress;
    function do_something_(address _contractAddress) public returns (uint256) {
        if (contractAddress!= address(0)) {
            uint256
