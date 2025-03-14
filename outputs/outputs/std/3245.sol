pragma solidity ^0.8.0;
contract Memory {
  function getArray()
    public
    view
    returns (uint[])
  {
    return new uint[](1);
  }
}

pragma solidity ^0.8.0;
contract Array{
  function getMinimum(uint input1, uint input2)
    public
    pure
    returns (uint){
    return input1 < input2? input1 : input2;
  }
}

pragma solidity ^0.8.0;
contract Array{
  uint[] a;
  uint b;

  function ()
    public
  {
    a = new uint[](0);
    b = 1;
  }

  function getValue() public view returns (uint) { return a[0]; }

  function setElement(uint index, uint value) public { a[index] = value; }

  function getElement(uint index) public view returns (uint) { return a[index]; }

  function getArray() public view returns (uint[]) { return a; }

  function getLastElement() public view returns (uint) { return b; }
}
