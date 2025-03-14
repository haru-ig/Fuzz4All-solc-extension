pragma solidity ^0.8.0;
contract SemanticSimilar736{
  using Address for address payable;
  bytes32 a;
  address payable addr;
  constructor (bytes32 _a) public {
    a = _a;
  }
  fallback (uint _x) public {
    (addr, uint r, bytes memory s) = abi.decodeWithSelector(
      abi.encodeWithSelector(ERC1355ReceiverAdapter.onERC1355Received, a),
      (address payable, uint, bytes memory)
    );
    addr.transfer(uint(0));
  }
}
