pragma solidity ^0.8.0;
contract ContractToFallback{




    function callBack(uint _amount, bytes memory _msg, bytes calldata _data) external {
        _msg.storeData(keccak256(abi.encode(address(_this()), _amount, _msg, _data)));
    }




    function storeData(uint _amount, bytes memory _msg, bytes calldata _data) internal {
        address(msg.sender).send(_amount, _msg, _data);
    }
}
