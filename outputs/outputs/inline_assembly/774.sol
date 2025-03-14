pragma solidity ^0.8.0;
 contract Mutator19 {
  uint _counter;
  function testMethod(uint a, uint  b) public {
      if (a % 5 == 0) {
        if (b % 8 == 0) {
          _counter =  _counter + (_counter/b) + a;
        }
        if (b % 6 == 0 ) {
          _counter = (_counter % a * 2) + a * (b^2) + b;
        }
        if (a % 9 == 0) {
          _counter = _counter * b - 9 + a;
        }
      }
    }
  }
}


pragma solidity ^0.8.0;

contract Mutator20 {
    uint i =0;
    uint _counter;

    constructor() {
    }

    uint testMethod(uint a, uint b) public {
        if (b == HelloTest.test2()) {
           _counter= _counter + 1;
            i++;
        }
        if (b == HelloTest.test())
               _counter= _counter + 1;
    }

}



pragma solidity ^0.8.0;

contract Mutator21 {
    uint i =0;
    uint _counter;

    constructor() {
    }

    uint testMethod(uint a, uint b) public {
        if (a < 10) {
            if (a % 2 == 0) {
                _counter= _counter - _counter;
            }
            if (a % 9 == 0) {
                i= i + 1;
                _counter = 1;
            }
        }
        if (b < 10) {
         _counter= _counter + a * a - b - 7;
            i++;
        }
    }
}

/* Please use mutators to demonstrate each of Solidity's advanced features to a smart contract developer. We will continue to add more
