pragma solidity ^0.8.0;
contract M {
  uint constant value = 5;
  uint  counter;
  fallback() external payable {
    counter --;
    gas;
    counter += value;
  }
}
contract B {
  uint constant value = 5;
  uint constant x = 12;
  function f(uint y) public {
    uint constant b = 16;
    uint constant a = 3;
    uint constant c = 4;

    counter = a + b + c + 2;
    uint add = counter + value + 2;
    uint subtract = counter - x;

    counter *= add - subtract;
    uint multiply = counter * 3.0;
    uint divide = counter / a;


  }
}

pragma solidity ^0.8.0;
contract A {
    fallback() external payable {
        bytes memory contractBytes = abi.encodeWithSignature("f(uint256)", 5);
        assembly {
            mstore(0xb4, contractBytes)


            mstore(0xb0, x)

            mstore(0xb0, 0x00000000000000000000000000000000000000000000000000000000000000000)






            mstore(0x40, 0x0000000
