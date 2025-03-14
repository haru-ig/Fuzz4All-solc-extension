pragma solidity ^0.8.0;
contract MutateSemantic5 {
    function callMutateSemantic4(bytes32 method_signature) public payable {
        address x = address(new MutateSemantic4());
        bytes memory buf = "";
        assembly {
            let _size := mload(method_signature)
            mstore(buf, getCode(add(_size, 0x20)))
        }
        bytes memory input = abi.encodeWithSignature(buf, method_signature, msg.value);
        (bool success, bytes memory result) = x.call.value(msg.value)(input);
    contract Caller is MutateSemantic4, MutateSemantic5 {}
}
