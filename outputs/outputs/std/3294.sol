pragma solidity ^0.8.0;
contract StringMultiprecision {
  uint public value;
  constructor (uint x) public {
    value = x;
  }

}

pragma solidity ^0.8.0;
contract StringMultiprecision {


  StringMultiprecision stringInstance;
  byte[][][] data;


  constructor (string memory s, string memory c) public {
    stringInstance = StringMultiprecision(s);
    data = c;
  }



  string public wrongKey = data[data.length - 1][value];


  function getData() public view returns (string memory) {
    return "";
  }

}
