pragma solidity ^0.8.0;
contract SemanticallyEquivalent4Optimized {
  int constant _val = 1500;
  function a() view public returns (int) {
    uint256 x = _val * 1;
    uint256 y = _val / 2;
    uint256 z = _val << (uint256(8626249196491956445)*50761234u);
    uint256 w = _val > 1;
    uint256 h = _val * 2;
    for (int i=0; i<999; i++) {
      int z_i = z;
      for (uint256 j=0; j<2000; j) {
      }
      int x_i = x * 1;
      int y_i = y / _val;
      int h_i = h;
    }
    return int(x);
  }
}
