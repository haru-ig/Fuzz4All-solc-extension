pragma solidity ^0.8.0;
contract Array {

  address constant pubArrayAddress = address(this);
  function min(uint256[] memory _arr) public pure returns (uint256){
  }
  function max(uint256[] memory _arr) public pure returns (uint256){
  }
  function sum(uint256[] memory _arr) public pure returns (uint256){
  }
  function set(uint256[] storage _arr, uint256 _idx, uint256 _elem) public pure {
  }
  function get(uint256[] storage _arr, uint256 _idx) public pure returns (uint256){
  }

  function sort(uint256[] storage _arr) public pure {
  }
}
pragma solidity ^0.8.0;
contract Convert {

  function str2uint(string memory _str) public pure returns (uint256){
  }
  function int2uint(int256 _int) public pure returns (uint256){
  }
}
pragma solidity ^0.8.0;
contract Math {

  function sqrt(uint256 _x) public pure returns (uint256){
  }
  function pow(uint256 _base, uint256 _exponent) public pure returns (uint256){
  }
}
pragma solidity ^0.8.0;
contract Memory {

  function value2Address(uint256 _index) public view returns (address){
  }
}
pragma solidity ^0.8.0;
contract Memory {

  function value2Array(uint256 _val) public pure returns (uint256[] memory){
  }
  function arrayFromAddress(address _arrAddress) public view returns (uint256[] memory){
  }
  function uint2Array(uint256 _arr) public pure returns (uint256[] memory){
  }
}
