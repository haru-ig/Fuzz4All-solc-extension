pragma solidity ^0.8.0;
contract FallbackExample {
    bytes32 public constant name = 'Solidity';
    bytes32 public constant version = '3.0';
    FallbackData data;

    function () public payable {
        callData();
    }
    function() external payable {}

    struct FallbackData {
        bytes138 bytes[6];
    }
    function callData() public payable {
        callData(data, keccak256(abi.encodePacked(address(this), data, 0, 0, 0, 0)));
    }
    function callData(FallbackData memory _data, bytes32 _key) public payable {

        if (keccak256(abi.encodePacked(_key, '00'))) {
            fallback();
        }
    }
    function fallback() public {
        data = FallbackData(abi.encodeWithSignature('()'));
    }
}
