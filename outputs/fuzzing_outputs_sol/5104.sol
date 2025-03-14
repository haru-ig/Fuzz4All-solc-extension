pragma solidity ^0.8.0;

contract ContractAddress {
    constructor() {}

    function fallback() external payable {}
}
contract ContractAddressWithFallback {
    function fallback() external payable {


        raise_exception(msg.sender, "fallback was removed", 123  );

    }

    function raise_exception(address contract_address, string memory message, uint256 data) internal pure returns (uint32) {
        assembly {
            let ptr := mload(0x40)
            mstore(ptr,contract_address)
            mstore(add(ptr, 32), message)
            mstore(add(ptr, 64), data)
            let result := mload(ptr)
            mstore(ptr, 0)
            return result
        }
    }
}
pragma solidity ^0.8.0;
contract ContractReceivesEther {
    ReceiveEtherFunc receive_ethers;

    constructor(ReceiveEtherFunc _receive_ethers) public {
        receive_ethers = _receive_ethers;
    }

    receive() external payable {
        receive_ethers();
    }
}
contract Receiver {
    receive() external payable {}
}
pragma solidity ^0.8.0;
contract Test0917 {
    function test() public pure returns (uint) {
        uint ret = 0;
        try Receiver.ContractReceivesEther(ret.receive_ethers).convert_uint_uint(1, 1)
          {
          return ret;
      } finally {}
    }
}
