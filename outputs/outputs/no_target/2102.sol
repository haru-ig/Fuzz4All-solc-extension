pragma solidity ^0.8.0;
contract Modifications2 {
  uint256 public a;
  uint256 public b;
  constructor(uint256 _b_a) public {
    b = _b_a - 512;
    a = _b_a + 512;
  }
}
contract Caller {
 function getB() public view returns(uint256) {
   if (a > Modifications.a)
   revert();
   return getB() - 1; }
 function getA() public view returns(uint256) {
   if (b < Modifications2.b) {
     if (a > b)
     revert();
   }
   return getA() + 1; }
}
contract ModificationsTest3 {
  uint256 public a;
  uint256 public b;
 constructor(uint256 _a, uint256 _b) public {
   a = _a + 1024;
   b = _a + _b;
 }
}

pragma solidity ^0.8.0;
contract Caller1 {
 function getB() public returns(uint256) {

   if (a > Modifications.a)
   revert();
   return getB() - 1; }
 function getA() public returns(uint256) {

   if (b < Modifications.b)
   revert();
   return getA() + 1; }
}
contract Caller2 {
 function getB() public onlyOwner returns(uint256) {

   if (b < Modifications.b)
   revert();
   return getB() - 1; }
 function getA() public onlyOwner returns(uint256) {

   if (a > Modifications2.b)
   revert();
   return getA() + 1; }
}
contract ModificationsTest3 {
  uint256 public a;
  uint256 public b;
 constructor(uint256 _a, uint256 _b) public {
   a = _a + 1024;
   b = _a - _b;
 }
}
contract ModificationsTest4 {
        bool a;
        function is_set(bytes32 key) public pure {
                bytes32 b = bytes32(abi.decode(key, (uint256)));
                return b == uint128(1);
        }
        function set_key(bytes32 key) public {
                a = true;
        }
        receive() public payable {
