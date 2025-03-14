pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract EquivalentProgram {
  bytes32 constant X = '100';
  bytes32 constant C = '200';


  bytes32 x;

  event _updated(bytes32 indexed _oldValue, bytes32 indexed newValue);

  function execute() public {
    x = C;
    emit _updated(x, C);
  }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract EquivalentProgram {
  bytes32 constant X = '100';
  bytes32 constant C = '200';
  bytes32 constant E = '300';

  bytes32 x;

  event _xUpdated(bytes32 _oldValue, bytes32 _newValue);
  event _cUpdated(bytes32 _oldValue, bytes32 _newValue);
  event _eUpdated(bytes32 _oldValue, bytes32 _newValue);

  function execute() public {
    x = C;
    emit _xUpdated(x, C);
    x = E;
    emit _xUpdated(x, E);
  }
}
