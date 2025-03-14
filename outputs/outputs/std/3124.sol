pragma solidity ^0.8.0;
contract Multiprecision1 {
  function mul(uint a, uint b) internal pure returns (uint z) {
    return (a * b) / 1000000000;
  }
}

contract Tests {
  uint[] public values;
  function add(uint[] memory valuesA, uint[] memory valuesB) public {
    uint k;
    uint j;
    for (k=0;k<3; k++) {
      uint z;
      for (j=0;j<3;j++) {
        z = valuesA[k] * valuesB[j];
        uint x;
        if (k == 2)
          x = k*valuesA[0];
        else if (j == 2)
          x = j*valuesA[0];
        else
          x = a * z;
        values[k*3+j] = x;
      }
      uint k1;
      for (k1=3;k1<6; k1+=2) {
        uint z;
        for (j=0;j<3;j++) {
          z = valuesA[(k-1)*3+j] + valuesA[k*(k-1)+j] + valuesA[(k+1)+k*(k-1)] + valuesA[k]*valuesA[j] + valuesA[k]*valuesA[(k+1)+j] + valuesB[j] + valuesB[(k+1))]*valuesA[0];
          uint x;
          if (k == 2)
            x = j*valuesA[0];
          else
            x = z/100000000000000000000000000;
          values[(k1+k)*3+j] = x;
        }
      }
      uint k1;
      for (k1=3;k1<6; k1+=2) {
        j = 3;
        for (; j<3; j+=2) {
          uint z;
          for (k=0;k<3;k++) {
            z = values[k*3+j] - valuesA[j+k*3+j] + valuesA[k]*valuesA[j+k] + valuesA[j]*valuesA[k] + valuesA[k]*valuesA[j] - valuesA[j+2]*valuesB[j];
            uint x;
            if (k == 2)
              x = k*valuesA[0];
            else
              x = values[k*3+j]*100000000000000000000000000/z + valuesA[j]*valuesA[j+2];
            valuesA[j] = z/1000000000;
            valuesA[j+2] = x;
          }
        }
      }
    }
  }
  function test() public
