pragma solidity ^0.8.0;
contract ModifiesPreviousGenerationUsingYulWithSemanticsMutated {
  address a;
  address b;
  address c;
  address d;
  address e;
  address f;
  uint c_gas;
  uint d_gas;
  uint e_gas;
  uint r;
  uint c;
  uint d;
  uint e;
  uint f;
  uint c_gas_prev_generation;
  uint d_gas_prev_generation;
  uint e_gas_prev_generation;
  constructor() {
    d_gas_prev_generation += 1;
    e_gas_prev_generation += 1;
    f_gas_prev_generation += 1;
    c_gas_prev_generation += 1;
    d_gas += 1;
    e_gas += 1;
    f_gas += 1;
    c_gas += 1;
    d += 1;
    e += 1;
    f += 3;

    r += 2;
    a = e;
    d = a_address;
    b = a;
    a_address = a;
    r += 2;
    g = 4;
    r += 2;
    a = address(a);
    a = address(b);
    a = address(c);
    a = address(a);
    a = a;
    delete this;
  }
}
