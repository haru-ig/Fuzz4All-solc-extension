pragma solidity ^0.8.0;
library Counter{
    mapping(address => uint256) public myMap;
    function inc(address addr) public {
        myMap[addr] = myMap[addr] + 1;
    }
}
contract InlineAssembly2{
    contract Counter{
        uint256 public value=1;
        function inc() public {
            value = value + 1;
        }
    }
    contract A{
        Counter.inc c;
        function test() public{
            c.inc();
            c.inc();
        }
    }
    uint a = 1;
    function test2() public {
      a += 1;
      a += 2;
      a += 3;
    }
}
