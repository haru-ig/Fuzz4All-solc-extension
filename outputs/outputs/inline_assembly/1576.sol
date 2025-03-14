pragma solidity ^0.8.0;
contract Equivalent {
uint256 x;
address a;
constructor() public {
    x = 1;
    a = msg.sender;
}
function mutate (uint256 _h) public {
  x=x+1;
  a=msg.sender;
}
function printBalance() public view returns (uint256) {
    return x;
}
}



contract Equivalent2 {

  byte private message;

  address public public_key;

  bytes4 private constant private_key = 0x1;


  constructor(address _public_key) public {
    public_key = _public_key;
  }


  function sign() public {

    bytes memory hashed_message = keccak256(abi.encodePacked(bytes1(0x1), message));

    bytes32 signature = ecrecover(hashed_message, private_key);

    message = 0x1;
    message = 0x00;
    message = 0;
    message = 0xaa;
    message = 0x3b;
    public_key.send(keccak256(abi.encodePacked(bytes(signature))))) ;
  }


  function verify() public {

    bytes memory hashed_message = keccak256(abi.encodePacked(bytes1(0x2), message));

    address signer = ecrecover(hashed
