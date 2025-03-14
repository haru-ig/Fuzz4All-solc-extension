pragma solidity ^0.8.0;
contract ModdedYulAssemblyContract {
uint internal contractCounter;
uint constant c = 0x00;
assembly {
  code {
    x = 10
    if eq(z, 1) x = add(x, 1)
    if eq(z, 2) x = mul(mul(mul(z, x), z), 2)
    if gt(x, add(1, 0x042983)) x = sub(x, c)
    return x >= sub(1, c)? x : add(add(x, c), sub(1, c))
  }
}
}
