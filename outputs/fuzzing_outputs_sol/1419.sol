pragma solidity ^0.8.0;
contract Caller{
    function f(){
    }

    function foo(address _owner, bytes memory _data) public returns(bytes memory){
      bytes memory returnValue = _data;

      Caller.Caller(_owner).f.value(1000 ether)(_data);

        EtherFallbackExample fallbackExample;
        fallbackExample.foo(_owner, _data);
        Assert.equal(returnValue, _data, "Caller: Fallback executed with unexpected data.");
    }
}
