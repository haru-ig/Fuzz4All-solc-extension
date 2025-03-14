pragma solidity ^0.8.0;
contract Mutator {
   uint8 _counter;
   uint8 a;
   uint8 b;
   modifier onlyIncrement() {
        _counter ++;
        _;
    }
     function Increment(uint a, uint b) public onlyIncrement{
        if (b == 0) return(uint(_counter = 0));
        _counter = _counter + 1;
    }
}

pragma solidity ^0.8.0;
contract Mutator {
   uint80 _counter;
   uint80 a;
   uint80 b;
   modifier onlyIncrement() {
        _counter ++;
        _;
    }
     function Increment(uint a, uint b) public onlyIncrement{
        if (b == 0) return(uint(_counter = 0));
        _counter = _counter + 1;
    }
}
