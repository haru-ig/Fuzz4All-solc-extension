pragma solidity ^0.8.0;
import "./MutatedFallback.sol";
contract EtherTransferMutator {
  function _mutator(uint256 data1, uint256 data2, uint256 data3) public {


    require(data2 == 0);
    uint256 data = data1 + data2;

    data = data + data3;

    require(data!= 0);
    require(data1!= 0);

    (data2, data3) = (data1, data2);
    require(data3 == 0);

    address payable mutatorCaller = msg.value + address(this);
    mutatorCaller.transfer(data);
  }
}

pragma solidity ^0.8.0;
contract InterfaceChange {
  IInterfaceContract interface_impl;
  bytes32 public interface_key;
  bytes32 private immutable _value;

  constructor(address ptr) mutated constructor {
    interface_impl = IInterfaceContract(ptr);
    interface_implementation_type = uint8(type(interface_impl));
    interface_key = abi.encodeWithSignature("name() returns(string)");
    _value = interface_impl.name();
  }

  function _return() public pure returns (bytes32) {
    return _value;
  }

  function name() public view returns (bytes32) {
    return _value;
  }
}

pragma solidity ^0.8.0;
interface IInterfaceContract {
    function name() external returns (bytes32);
}
