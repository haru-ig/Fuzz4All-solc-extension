pragma solidity ^0.8.0;
contract ArrayNew {
  address public a;
  mapping(uint => uint) public b;
  function f(address a) public {
    uint[] arr;
    arr[100] = a;
    b[2] = 1;
    b[1] = 3;
  }
  constructor() {
    a = 0;
  }
  function() public payable {

    require(a > 0);
    uint[] mArr = new uint[](arr.length);
    mArr[0] = arr[0];
    b[100] = mArr.length;
    mArr[1] = 2;
    mArr[2] = 3;
    mArr[3] = 4;
    mArr[100000] = 5;
    b[100000] = mArr.length;
  }
*/
pragma solidity 0.4.26;
contract ArrayConstrained {
  bytes4 constant 0xd06951b3 = bytes4(keccak256('length()'));
  function f() public pure returns (uint256) { address x=0x32698618d8f33699; return x.length(); }
}
