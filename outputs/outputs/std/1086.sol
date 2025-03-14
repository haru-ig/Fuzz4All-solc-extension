pragma solidity ^0.8.0;
import Convert { uint } from "./Convert.sol";
contract Convert {
    function convert(uint x) public pure returns (uint y) {
        y = uint(uint(x) * 100);
    }
}


address[4] memory addrs = [0xab016c43b11e648628fe691448aeba52f8131750, 0xAB016C43B11E648628FE691448ABEBA52F8131750, 0xab016C43b11e648628fe691448aebada52f8131750, 0xab016c43B11E648628fe691448ABEba52F8131750];
uint[4] memory arrX;
uint[4] memory arrY;
uint[4] memory result = new Convert().convert(8553872851342390001);
for (uint j = 0u; j < 4u; ++j) {
  arrX[j] = addrs[j];
  result(arrY[j], arrX[j]);
  printf("%08u %08u %08u %08u\n", addrs[j], arrX[j], arrY[j], result[j]);
}
