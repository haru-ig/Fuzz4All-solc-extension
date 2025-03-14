pragma solidity ^0.8.0;
contract EtherTesterMutated2 is EtherTesterMutated1 {
    function() external {
        address payable addr = this.functionSelector;
        bytes memory data = abi.encodeWithSelector(addr.call.value(address(0).balance)());
        emit Log(data);
    }
}
