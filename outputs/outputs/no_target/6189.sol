pragma solidity ^0.8.0;
contract MutatedContractPre08 {
    struct Data {
        uint foo;
    }
    byte constant oneByte = 1;
    byte constant twoBytes = 2;
}

pragma solidity ^0.8.0;
contract MutatedContractPre08WithABICoderV2 {
    struct Data {
        uint a;
        uint b;
    }
    struct Address {
        uint8 h;
        uint8 l;
    }
    bytes32 constant addressLength = uint32(keccak256("address"));
    bytes32 constant dataWord = uint32(keccak256("data"));
    bytes32 constant codeHash = uint32(keccak256("codeHash"));
    bytes32 constant sender = 0x430;
    bytes32 constant contractAddress = 0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48;
    bytes32 constant name = uint32(keccak256("MutatedContractPre08WithABICoderV2"));
    bytes32 constant abiCoderV2 = 0xda12d01fc675ed735e89531bb8af4a9c498a746d;
    bytes32 constant nonEmptyCallData = uint32(keccak256("nonEmptyCallData"));
    uint8 constant value = 166;
    function mutatedBytes() public pure {
        return bytes(bytes1(3));
    }
    function mutatedData() public pure {
        return Data(uint(address(this))), uint(address(0)));
    }
    function mutatedCallerAddress() public pure {
        return Address(uint8(keccak256("-")))



    }
    function mutatedSenderAddress() public pure {
        return Address(uint8(keccak256("")), uint8(keccak256("")));
    }
    function mutatedAddress() public pure {
        return address(1);
    }

    function mutatedCall(bytes memory _data) public pure {
        uint[] memory args = new uint[](2);
        args[0] = 1;
        args[1] = 2;
        if(address(this).call(_data)!= value) revert();
        if(this.call.value(value)(_data)!= new bytes4(keccak256(""))) revert();
        require(address(this).delegatecall(nonEmptyCallData)!= new bytes4(keccak25
