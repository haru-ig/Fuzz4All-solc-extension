pragma solidity ^0.8.0;
contract F7 {
    uint b;
    constructor() {
        b = 1;
    }
    function divide(uint x) public {
        b = 1/(b/x*(x/x+((x-1)/x))/x);
    }
    function modify(uint x) public {
        b = 2*b + x*(x/x-2);
    }
}
contract F7 is F7 {}
contract Main {
  function run() public {
    uint sum = f7.divide(35) + f7.modify(35);
    require(f7.divide(sum) == 1 && f7.modify(sum) == 28, "Wrong.");
  }
}
