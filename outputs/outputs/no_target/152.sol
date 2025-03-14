pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;

import "../vendor/kovan-proxy/proxy.sol";
using Proxy for address;

contract contract_name {
    function callContractMethod() public view returns(bytes memory) returns(bytes32) {
        address contractAddress = this;
        bytes32 contractMethodId = abi.encodeWithSignature("addMethod()");
        bytes memory contractInput = abi.encodeWithSignature("addInput()");
        bytes memory contractOutput;
        Proxy.solDispatch(contractAddress, contractMethodId, contractInput, contractOutput, 0);
    }
}
