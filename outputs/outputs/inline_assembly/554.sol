pragma solidity ^0.8.0;
library InlineAssemblyUsage {
    bool alreadyCalled = false;
    struct Inner {
       bool x;
    }
    Inner inner;
    function testMethod() public pure returns(bytes32) {
       bytes32 x;
       assembly {
         mstore(address(x), callvalue())
         mstore(0, x)
         x := x
         x := callresult()
       }

      if(alreadyCalled) {
        revert("called a second time");
      }

      alreadyCalled = true;
      return x;
    }
}
