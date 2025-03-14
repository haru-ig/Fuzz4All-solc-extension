pragma solidity ^0.8.0;
int64 constant c = 0x0000000000000000000000000000000000000000000000000000000000001;
mapping (uint => uint4) x;
uint public contractCounter;
constructor() {
  contractCounter += 1;
  x[1] -= c;
}
uint public c;
uint5 public c2;
function multiply() public returns (uint4){
  uint _z = 1;
  uint _c = 1;
  for(uint _c = 0;;){
    if (_c > 19) revert();
    uint5 _v = uint5(_z * 2) - 2;
    uint5 _z = uint5(_v) / 2 % 2;
    uint _c = uint5(_v) % 2;
    uint _z2 = uint(x[_z]);
    if (x[_z] == c){
      uint _c2 = uint(x[_c]);
      if (_c2 == c){
        if (_z2 == 1) {
          if (_c2 == c || _z2 == 1){
            return _z2 >= 1+c? _z2 : _z2 + c;
          }  else {
            return _z2 < 1+c? _z2 : _z2 + c;
          }
        }  else {
          if (_c2 == c || _z2 == 0 || _z2 == c) {
            return _z2 >= 1+c? _z2 : _z2 + c;
            }  else {
            return _z2 >= 1+c? _z2 : _z2 + c;
            }
          }
    }
  }
}
 */
