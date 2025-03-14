pragma solidity ^0.8.0;
contract Caller2 {
  function callBackFunc(uint _value) public payable {}
}

pragma solidity ^0.8.0;
contract Caller {
  function callBackFunc(uint _value) public payable {
    uint sum;
    uint d = _value;
    for (uint i = 1; i < 100; i++) {
      sum += d;
      d -= d;
      if (d < 0) {
        d = 0;
      }
    }
    uint sum1;
    for (uint j = 1; j < 100; j++) {
      sum1 += d;
      d -= d;
      if (sum!= 0) {
        break;
      }
      if (j % 10 == 0) {
        uint r = 1 + (50 * j) / 108;
        console.log("Round " + (9*j) + " -> " + r);
      }
    }
    console.log("Sum:        " + sum);
    console.log("Difference: " + sum - sum1);
  }
}
