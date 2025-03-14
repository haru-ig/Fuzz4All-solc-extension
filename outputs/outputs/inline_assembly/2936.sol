pragma solidity ^0.8.0;
contract C {
  using uint256 for uint;
  string public m_x;
  function setX(string calldata _x) public {
    m_x = _x;
  }
  function getX() public view returns (string memory) {
    return m_x;
  }
}
```
```
solidity: Warning: Variable is assigned in the constructor. Variable "x" has no corresponding field. You can either decline its existence altogether with the "noconstructor" compiler flag, or make sure all variables are initialized. The latter option is not recommended, as it is prone to bugs and unwanted code duplication. You might prefer to use "solidity: storage" (default):
```
```
pragma solidity ^0.8.0;
contract C {
  uint256 m_x;
  uint256 public x;
  constructor(uint256 _x) {
    m_x = _x;
  }
}
```
```
solidity: Compiler Warning: This contract contains constructor arguments. Please review your Solidity smart contract and remove unnecessary constructor arguments. If a constructor argument is not used, it may cause subtle bugs and errors when executing your smart contract.
```
