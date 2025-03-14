pragma solidity ^0.8.0;
contract FirstGen {
        uint xStorage;

function test4() public {
  assert(xStorage == 0);

}
  constructor() {xStorage = 1;}
}

contract Generated(FirstGen) {

}
