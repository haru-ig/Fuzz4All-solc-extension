pragma solidity ^0.8.0;
contract Main
{
  uint private myUint;
  uint arrayMyUint[10];
}

pragma solidity ^0.8.0;
contract Array
{

  function returnMyUint()
    public
    view
    returns (uint)
  {
    return myUint;
  }

  function returnMyArrayUint()
    public
    view
    returns (uint[])
  {
    uint[] memory myArrayUint = new uint[](arrayMyUint.length);
    for (uint i = 0; i < arrayMyUint.length; i++) {
      myArrayUint[i] = arrayMyUint[i];
    }
    return myArrayUint;
  }

  function returnMyMyUint()
    public
    view
    returns (uint)
  {
    return myUint;
  }

  function returnMyMyArrayUint()
    public
    view
    returns (uint[])
  {
    uint[] memory myArrayUint = new uint[](2);
    myArrayUint[0] = myArrayUint[1];
    return myArrayUint;
  }


  function mutator(uint _new) public {
    myUint = _new;
  }
}
