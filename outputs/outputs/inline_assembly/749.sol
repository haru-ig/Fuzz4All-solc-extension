pragma solidity ^0.8.0;
 contract C14
{
    uint _counter;

    modifier testAddOrSub(uint x, uint y) {
     if  (x <= 2 && y == 0 || x == 3 && y == 1) {
      _counter = _counter;
     if  (x <= 2 && y == 0 && _counter % 3== 0) {
      _counter = _counter + 1;
     }
} else {
 _counter = _counter + 2;
}
}

    constructor() public {
        _counter = 0;
    }

    function add(uint a, uint b)
        testAddOrSub(a, b)
    {
        _counter = _counter + a + b;
    }
}
contract C15
{
    uint _counter;

    modifier testAddOrSub(uint x, uint y) {
     if  (x <= 2 && y == 0 || x == 3 && y == 1) {
      _counter = _counter;
      if  (x <= 2 && y == 0 && _counter % 5 == 0) {
      _counter = _counter + 1;
     }
} else {
 _counter = _counter + 2;
}
}

    constructor() public {
        _counter = 0;
    }

    function add(uint a, uint b)
        testAddOrSub(a, b)
    {
        _counter = _counter + a + b;
    }
}
contract C16
{
    uint _counter;

    modifier testAdditionOrSubtraction(uint x, uint y) {
     if  (x <= 2 && y == 0 || x == 3 && y == 1) {
      _counter = _counter;
 if  (x <= 2 && y == 0 && _counter / 5 == 0) {
      _counter = _counter + 1;
    }
}
