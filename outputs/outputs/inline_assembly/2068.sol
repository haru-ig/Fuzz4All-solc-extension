pragma solidity ^0.8.0;
contract ContractWithInlineAssembly {
address addr;
constructor() {
   addr = 0x3C3095766C02900D0dAa28050b5fD5Ab8bAeE029;
}
}

pragma solidity ^0.8.0;
contract ContractWithInlineAssembly {
uint var1;
uint var2;
uint var3;
constructor(uint d1, uint d2, uint d3) {
  var1 = d1;
  var2 = d2;
  var3 = d3;
}
function add() public pure {
  var1 = add(var1, var2, var3);
}
function sub() public pure {
  var1 = sub(var1, var2, var3);
}
uint add(uint a, uint b, uint c) private pure {
  return a + b + c;
}
uint sub(uint a, uint b, uint c) private pure {
  return a - b - c;
}
}
