pragma solidity ^0.8.0;
contract Semantics {
    function doMath(uint x, uint y, uint z) public pure returns (uint result) {
        uint y_squared = y * y;
        uint z_squared = z * z;
        uint x_squared = x * x;
        uint one_over_8;
        assembly {
        one_over_8 := 0x10000000000000000000000000000000
        }
        result = ((z - x) * x * y +
                  ((z + ((x_squared - y_squared)/one_over_8)*x +
                    ((x_squared + y_squared)/one_over_8)*y)
                   * y - z * y)
                   * x * y_squared +
                  ((x - (z_squared + (y_squared/one_over_8)*y + x_squared/one_over_8)*y)
                   * (z - x) * (x - x) -
                  (y_squared/one_over_8) * (z_squared + y_squared)* x * x_squared -
                  ((x * (y_squared / one_over_8))
                    * ((z_squared + y_squared)* y + y_squared/one_over_8) * x +
                    ((y_squared + z_squared)/one_over_8 - y_squared/one_over_8) * x_squared)
                  + (z_squared*x*y_squared + (y_squared + x_squared)/one_over_8) *z_squared +
                  ((x - (x_squared + (y_squared/one_over_8 - z_squared/one_over_8) *x_squared)*x)
                   * (x - x) *  x_squared))/(y_squared*y_squared);
    }
}
