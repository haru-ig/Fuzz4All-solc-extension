pragma solidity ^0.8.0;
contract Fallback {
    function bar(uint){
        address payable p;
        p.send(0);
    }
}
contract Caller {
    address payable contractAddress;
    bytes32 internal _data;
    event Data(uint);
    modifier withData() {
        emit Data(address(this).balance);
        _;
    }
    function _() internal {
        contractAddress.call{value:msg.value}(_data);
    }
    function callWithEther(bytes calldata _data) internal withData returns (bytes memory) {
        require(bytes(contractAddress).length > 1);
        return contractAddress.call{value:0}(_data);
    }
    function callWithEtherAndPay(bytes calldata _data) internal withData returns (bytes memory) {
        return contractAddress.call{value:0}(_data);
    }
}
