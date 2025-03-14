pragma solidity ^0.8.0;
contract ModifyPreviousGeneration2 {
  function foo(uint x, uint y) public pure {}
  function modify(uint x, uint y) public {
    uint tx = 90;
    uint thex;
    assembly {
      thex := div(tx, 3)
    }
    thex = x;
    thex = 1.5;
    thex = 1.5 - thex;
    thex = thex + tx;
    thex = thex + tx;
    thex = thex * tx;
    thex = mul(thex, tx);
    thex = div(thex, tx);
    thex = add(thex, tx);
    thex = sub(thex, tx);
    thex = x;
    if (tx!= thex) revert("Incorrect", add(x, y));
    if (tx!= thex) revert("Incorrect");
    if (tx!= thex) revert();
    if (tx!= thex + tx) revert();
    if (tx!= thex * tx) revert();
    if (tx!= thex - thex) revert();

  }
}
contract ModifyPreviousGeneration3 {
  function foo(uint x, uint y) public pure {}
  function modify(uint x, uint y) public {
    uint tx = 80;
    uint thex;
    assembly {
      thex := div(tx, 3)
    }
    thex = x;
    thex = -thex;
    thex = +thex;
    thex = thex;
    thex = mul(thex, tx);
    thex = div(thex, tx);
    thex = add(thex, tx);
    thex = sub(thex, tx);
    thex = x;
    if (tx!= thex) revert("Incorrect", add(x, y));
    if (tx!= thex) revert("Incorrect");
    if (tx!= thex) revert();
    if (tx!= thex + tx) revert();
    if (tx!= thex * tx) revert();
    if (tx!= thex - thex) revert();

  }
}
