pragma solidity ^0.8.0;
contract Decompiler {
  address owner;
  bytes32 name;

  constructor () {
    owner = msg.sender;
  }

  function set(bytes32 name_) public onlyOwner {
    name = name_;
  }

  function execute (address self, bytes calldata args) public pure {
    self.transfer(decodeCalldata(args));
  }

  function decompile () public view onlyOwner returns (bytes32 name_) {
    return name;
  }


  string private toString1;
  function decodeCalldata (bytes memory args) internal pure returns (bytes memory) {
    if(getArgsLength(args) > 3) revert('decoding args failed, length > 3');
    emit Decoded('0x' + args);
    return args;
  }

  pure function getArgsLength(bytes memory args) internal pure returns (uint32 i) {
    assembly { i := mload(add(args, 0x04)) }
  }

  function verify (address instance, bytes memory args, bytes32 name_) public view {
    D d = instance.decompile();
    (name_, bool, ) = (d.decompile().name, d.decompile().abi.encodeFunctionSignature(name_));
  }
*/
