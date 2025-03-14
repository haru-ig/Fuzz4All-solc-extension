pragma solidity ^0.8.0;
contract mutationsemantic
{
    bool public executed = false;
    struct storage1
    {
        bool _b;
    }
    struct storage2
    {
        bytes _b;
    }
    function s1() public
    {
        storage1 storage s = storage1(memory3());
        s._b = (true && (true));
        executed = (true);
    }
    function s2(storage2 memory d) public
    {
        d._b = (true && (true));
        executed = (true);
    }
    function memory3 () public pure returns (bytes memory memory3)
    {
        return bytes32(1);
    }
}

pragma solidity >=0.5.0 <=0.6.0;

contract MutationSemantic{
  function callFallback(uint i, bytes32 b) public returns (uint) {
      fallbacksemantic_mut1 a;
      return i + 1 + b.length + 1;
  }
    function callFallback2(uint i, storage1 memory h) public returns (uint) {
      fallbacksemantic_mut3 a;
      return i + 1 + h.b.length + 1;
    }
    function callFallback3(uint i, storage2 memory h) public returns (uint) {
      fallbacksemantic_mut2 a;
      h.b;
      return i + 1 + h.b.length + 1;
    }
    function callFallback4(uint i, bytes memory o) public returns (uint) {
      fallbacksemantic_mut4 a;
      return i + o.length + 1;
    }
    function callFallback5(uint i, bytes memory o) public
    returns (uint){
      fallbacksemantic_mut5 a;
      return i + o.length + 1;
    }
    function callFallback6(uint i) public returns (uint) {
      fallbacksemantic_mut6 a;
      return i + 1 + 2*1 + 1 + 1;
    }
    function callFallback7(uint i, bytes memory o) public returns (uint) {
      fallbacksemantic_mut7 a;
      return i + o.length + 1;
    }
    function mutated1(MutationSemantic.storage2 memory o) public returns (uint){
      o.b;
      return 1;
  }
    function mutated2(mutationsemantic.storage1 memory a, mutationsemantic.storage2 memory b) public returns (uint){
      a.b;
      b.b;
      return 1;
  }
}
