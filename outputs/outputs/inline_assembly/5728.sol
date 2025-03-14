pragma solidity ^0.8.0;
contract Test4 {
    bool public _var = false;
    address public _address;
    modifier test {
      if (_var) {
        _;
      }
    }
    function test() public pure{
        uint b_var = block.number;
        b_var +=1;
        uint c = 10;
        while (true) {
          c +=1;
        }
    }
    function getTest(uint arg) public test returns (uint) {
        return arg;
    }
}
