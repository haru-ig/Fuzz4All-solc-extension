pragma solidity ^0.8.0;
contract test45 {
  function test45() public {
    uint[5] x = new uint[](5);
    uint[] memory y = new uint[](5);




    x.reverse();
    y.reverse();
    x.pop();
    y.pop();
    x.push(7);
    y.push(0);
    for(uint i = 0; i<5; i++){
      x[i] = i;
      y[i] = i;
    }
    for(uint j = 0; j < 5; j++){
      x[j] = x[j] + y[j];
      y[j] = y[j] + x[j];
    }
  }
}
