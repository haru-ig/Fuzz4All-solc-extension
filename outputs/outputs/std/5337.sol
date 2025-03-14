pragma solidity ^0.8.0;
interface Interface {
  function isNotReallyUsed() external pure returns (bool);
}
contract ConvertExample {
    Address payable public pay_to;

    bytes32 constant constantTest = keccak256("");
    function test(uint256 input) public {
      uint256 convertedInput = toUint64(input);
      (uint test1, uint test2) = toUint64_twoStep(input);
      bytes32 test3 = ethToUint64(input);
      uint test4 = uint(test3);
      bool test5 = uintToBool(input * 5);
      bool test6 = boolToUint(test6);
      bool test7 = boolToBool(test7);
      Interface iface = Interface(address(0));
      bool test8 = iface.isNotReallyUsed();
    }
    function toUint64(uint256 input) internal pure returns (uint) {
        require(input == 0 || (input > 0 && input <= 65536));
        uint256 test = input;
        return uint((uint128(test) >> uint(test >> 16))));
    }
    function toUint64_twoStep(uint256 input1, uint256 input2) internal pure returns (uint, uint) {
        require(input1 == 0 || (input1 > 0 && input1 <= 65536) && input2 == 0 || (input2 > 0 && input2 <= 65536) );
        uint test1 = input1;
        uint test2 = input2;
        uint test = safeUint(test1, test2);
        require(test == uint(uint(uint256(test1) * uint256(test2))));
        return (test1 / 100000, test2 / 1000);
    }
    function uintToBool(uint256 input) internal pure returns (bool) {
        return input!= 0;
    }
    function boolToUint(bool input) internal pure returns (uint256) {
        require(input ==
