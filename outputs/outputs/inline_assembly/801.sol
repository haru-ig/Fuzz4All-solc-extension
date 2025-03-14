pragma solidity ^0.8.0;

    contract Mutate {

        uint public counter;

        uint private blockNumber;

        uint private increment;

        modifier onlyAfter1000000() {
            require(counter <= 1000000, 'Call limit reached, try increasing increment');
            _;
        }

        constructor(uint increment) {
            blockNumber = block.number;
            this.increment = increment;
            increment(increment);
        }

        function increment(uint newCount) public onlyAfter1000000 {
            counter += newCount - counter;
        }
          function isActive(uint _number) public view returns(bool boolActive){
            uint blockCount = block.number - blockNumber +1;
            return blockCount%increment == 0;
        }

    }
    contract Mutator {
        uint _counter;
        uint a;
        uint b;
modifier onlyIncrement() {
      _counter ++;
      _;
    }
    function Increment(uint a, uint b) public onlyIncrement{
        if (b == 0) {
         _counter = 0;
         a = 0;
         return;
        } else {
          _counter = _counter + 1;
        }
        b = _counter;
    }
}
