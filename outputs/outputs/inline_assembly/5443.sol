pragma solidity ^0.8.0;
contract MutateBc4 {
    uint public gasleftBc4;
    uint constant maxGasBc4 = 100000;
    mapping(address => uint) public balanceBc4;

    modifier shouldHaveBalance(uint totalAmount) {
      gasleftBc4 = gasleftBc4 > maxGasBc4? maxGasBc4 : gasleftBc4 - totalAmount;
      assert(gasleftBc4 >= totalAmount);
      _;
    }
    uint public _rBc4;
    function _next2() public {
      uint sum;
      sum = _rBc4 * 50;
      sum /= 100;
      uint remaining = _rBc4;
      if (remaining < 20000 / 2 and gasleftBc4 > 10000) {
        sum += 1;
        uint _gasleftBc4 = gasleftBc4;

        while (_gasleftBc4 > 15000 && gasleftBc4 >= 10000) {
          sum += (remaining - (remaining * gasleftBc4) / 10000);
          remaining = _rBc4;
          gasleftBc4 = gasleftBc4 - 10000;
        }
      }
      assert(remaining <= 20000 / 2);
      _rBc4 = remaining;
    }
    function increaseR(uint val) public shouldHaveBalance(1) {
      require(true,);
      _rBc4 += val;
    }
    function increaseR2(uint val) public {
      _rBc4 += val;
    }
    function increaseR3(uint amount) public {
      _rBc4 += amount;
    }
}
