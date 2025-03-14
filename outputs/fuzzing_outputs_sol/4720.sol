pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract FallbackInterface {
    function fallback(bytes memory) public;
}

pragma solidity ^0.8.0;
contract ExampleInterface {
    function execute() public returns (bytes memory);
}

pragma solidity ^0.8.0;
contract ExampleCaller {
    ExampleInterface public example;
    address public caller;
    bytes public executeData;

    constructor(address _caller) {
        caller = _caller;
        example = new ExampleInterface(caller);
    }

    function execute() public {
        example.call{value: 1 ether}(executeData);
    }

    function test(bytes memory _executeData) public {
        example.call{value: 1 ether}(executeData);
    }
}
interface MockInterface {
    function callNoValue(bytes memory _data) payable external;
    function callValue(uint _amount, bytes memory _data) external;
}
contract FallbackWithReceive {
    address public contractAddress;
    address public fallbackAddress;
    MockInterface public mock;
    string public valueString = "value";

    constructor(address _fallbackAddress, MockInterface _mock) {
        fallbackAddress = _fallbackAddress;
        mock = _mock;
        contractAddress = address(this);
    }

    function executeTest() public {
        mock.callValue{value: 1 ether}(42, abi.encodePacked(valueString, 0x1));
        uint value = 50;
        mock.callNoValue{value: value }(abi.encodePacked(valueString, 0x1));

        mock.call{value: value}(abi.encodePacked(valueString, 0x1));
        mock.call{value: value}(0x0, abi.encodePacked(valueString, 0x1));

        mock.call{value: value, data: abi.encodePacked("\x00", 0x1)}("\x00");
        mock.call{value: value}("");
    }

    function setContractAddress(address _contractAddress) public {
        contractAddress = _contractAddress;
    }
}
contract Fallback {
    MockInterface public mock;
    bytes32 private constant FALLBACK = 0x0274464cf98ea5bb005f817ac52470d91ed4f263b38d6a6b6faee3c6c876f909;
    bytes4 constant internal signatureFail = 0xff00;
    bytes4 constant internal signatureReceive = 0xf301;
    bytes4 constant internal signatureFallback = 0xf302;

    constructor(address _mock) {
        test();
        mock = MockInterface(_mock);
    }

    function test() public {
        bytes memory data;
        data.length;
        mock.pragmaCall
