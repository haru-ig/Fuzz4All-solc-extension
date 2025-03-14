pragma solidity ^0.8.0;
contract SemanticallyEquivalent21 {
  function bar(uint x, uint y) public pure {

    assembly { revert(0, div(x, y)) }
  }
  function foo(uint x, uint y) public pure {
    assembly { revert(0, add(x, y)) }
  }
}
contract SemanticallyEquivalent22 {
  function bar(uint x, uint y) public pure {

    assembly { revert(0, add(x, y)) }
  }
  function foo(uint x, uint y) public pure {
    assembly { revert(0, sub(x, y)) }
  }
}
contract SemanticallyEquivalent23 {
  function foo(uint x, uint y) public pure {
    assembly { revert(0, mul(x, y)) }
  }
  function bar(uint x, uint y) public pure {

    assembly { revert(0, mul(x, y)) }
  }
}
contract SemanticallyEquivalent24 {
  function foo(uint x, uint y) public pure {
    assembly { revert(0, sub(x, y)) }
  }
  function bar(uint x, uint y) public pure {

    assembly { revert(0, or(x, y)) }
  }
}
contract SemanticallyEquivalent25 {
  function foo(uint x, uint y) public pure {

    assembly { revert(0, xor(x, y)) }
  }
  function bar(uint x, uint y) public pure {
    assembly { revert(0, sub(x, y)) }
  }
}

contract InlineAssembly {
  function callWithoutArg(uint x) public {
    assembly {
      let i := eq(0, x)
      return(i)
    }
  }
  function callWithByte(uint x, bytes memory b) public pure {
    assembly {
      let i := eq(0, x)
      return(i)
    }
  }
  function callWithAddress(address x, bytes memory b) public pure {
    assembly {
      let i := eq(0, x)
      return(i)
    }
  }
  function callWithUint(uint x, bytes memory b) public pure {
    assembly
