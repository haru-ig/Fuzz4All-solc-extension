pragma solidity ^0.8.0;
contract ModifiesSquashGenerationsUsingYulWithSemanticsMutated {
  address public a;
  address public b;
  address public c;
  address public d;
  address public e;
  constructor(address _newA, uint _newR, uint _newG, address _newA_address) {
    r = _newR;
    a_address = _newA_address;
    b = a;
    e = a;
    a = _newA;
    c = a;
    d = a;
    g = _newG;
  }
  function getAddress() public view returns (address) {
    return a;
  }
}

pragma solidity ^0.8.0;
contract ModifiesSquashGenerationsUsingYulWithSemanticsMutated {
  uint public g;
  address public a;
  address public b;
  address public c;
  address public d;
  address public e;
  constructor(address _newA, uint256 _newR, uint _newG, address _newA_address) {
    r = _newR;
    a_address = _newA_address;
    b = a;
    e = a;
    c = a;
    d = a;
    g = _newG;
  }
  function getAddress() public view returns (address) {
    return a;
  }
}

pragma solidity ^0.8.0;
contract ModifiesSquashGenerationsUsingYulWithSemanticsMutated {
  uint public g;
  address public a;
  address public b;
  address public c;
  address public d;
  address public e;
  constructor(address _newA, uint _newR, uint _newG) {
    g = _newG;
    r = _newR;
    a = e;
    b = a;
    e = a;
    c = a;
    d = a;
    a = address(a);
    a = address(b);
    a = address(c);
    a = a;
  }
  function getAddress() public view returns (address) {
    return a;
  }
