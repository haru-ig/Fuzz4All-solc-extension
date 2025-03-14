pragma solidity ^0.8.0;
contract Example{
    uint256 public constant x = 0;
}
```
`private` variables declared as `internal` and `protected` should only be used in stateless contracts.

You can use inline assembly like in the following examples:

```json
{
  "sources": [
    {
      "name": "Example.sol",
      "content": "pragma solidity ^0.6.6;  contract Example { uint internal internal constant x = 0 }   contract Simple {    function internalX() public view returns(uint) { return internalX1(); }    function internalX1() public view returns(uint) { return x; }   }   contract Simple2 {     function x() public view returns(uint) { return x1(); }     function x1() public view returns(uint) { return x; }   }   contract Complex {     function x() public view returns(uint) { return x1(); }     function x1() public view returns(uint) { return x; }    } "
    }
  ],
  "abi": [
    {
      "constant": true,
      "inputs": [],
      "name": "x",
      "outputs": [
        {
          "internalType": "uint256",
          "name": "",
          "type": "uint256"
        }
      ],
      "payable": false,
      "stateMutability": "view",
      "type": "function"
    },
    {
      "constant": true,
      "inputs": [
        {
          "internalType": "uint256",
          "name": "index",
          "type": "uint256"
        }
      ],
      "name": "x1",
      "outputs": [
        {
          "internalType": "uint256",
          "name": "",
          "type": "uint256"
        }
      ],
      "payable": false,
      "stateMutability": "view",
      "type": "function"
    },
    {
      "constant": true,
      "inputs": [
        {
          "internalType": "uint256",
          "name": "",
          "type": "uint256"
        }
      ],
      "name": "x2",
      "outputs": [
        {
          "internalType": "uint256",
          "name": "",
          "type": "uint256"
        }
      ],
      "payable": false,
      "stateMutability": "view",
      "type": "function"
    },
    {
      "constant": true,
      "inputs": [
        {
          "internalType": "uint256",
          "name": "",
          "type": "uint2
