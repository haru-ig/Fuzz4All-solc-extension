pragma solidity ^0.8.0;


contract Empty {
  function empty() public pure {
    assembly {

    }
  }
}



contract EmptyTest {
  function testEmpty() public {
    assembly {

        empty()
    }

    Empty empty = Empty(0);
    empty.empty();
  }
}




contract InlineAssemblyTest {
  function test() public {
    Empty empty = Empty(0);

    Assembly.for(empty).empty();


    Empty empty2 = Empty(1);
    empty2.empty();
  }
}
