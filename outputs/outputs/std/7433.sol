pragma solidity ^0.8.0;
contract Mutant
{
uint8 constant R = 7;
mapping (uint8 => uint8) mem_values;

function test_mapping (uint8 s) public pure {
    if (s == R) {
      uint m = 9;
      M[m][99] += m;
      bytes32 b = "0x15280b57dd20c971975a0b77b24068329d6c9ee87e2755a9f96949e3379d355f";
      M[9][99] += b;
    } else {
      uint r;
    }
  }

  function test_mapping_array (uint8 r_arg, uint j) public pure {
     if (r_arg!= 7) {
      uint8 a[10];
      a[j] >>= r_arg;
      uint8 a_value;
      bytes32 b;
      b = "0x15280b57dd20c971975a0b77b24068329d6c9ee87e2755a9f96949e3379d355f";
      a_value = M[10][j] + 2;
    }
    else {
      uint8 t_mem_values;
      uint8 r;
    }
  }

  mapping (uint8 => uint8) public M;
}
