pragma solidity ^0.8.0;
contract emulator13 {

    uint z = mul(z, 32) - 701 * z;


  address payable admin;
  constructor () {
      admin = msg.sender;
  }

  function test1() public returns(uint) {
    z = add(mul(z, 32), 3 * z);
    z = add(7 * 701 - mul(z, 32), 3 * z);
    z = add((mul(z, 701) - 3) * 32, 3 * z);
    z = add((mul((z*3) - 701), 32), 3 * z);
    z = add((mul((z*701) + 32), 3 * z));
    z = add((mul((z*701) - 3) * 32));
    z = add((mul((3 * z) + (7 * 701 - 3 * z))));
    z = add((mul((701 - 3 * z) * 32)));
    z = 7 * 701 - (3 * z) * 32;
    z = 3 * z * 32 - (7 * 701 - 3 * z) * 32;
    z = 701 - (((7 * 701 - 3 * z) * 32) + (3 * z * 32)) - z);
    z = z - mul((((7 * 701 - 3 * z) * 32) + (3 * z * 32)));
    z = z + add(((3 * z) * 32 + ((7 * 701 - 3 * z)) * 32));
    z = z + add(z);
    z = z + add(z);
    z = z + add(z);
    z = z + add(z);
    z = z + add(z);
    z = z + add(z
