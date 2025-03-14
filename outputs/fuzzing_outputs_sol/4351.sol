pragma solidity ^0.8.0;
contract CallerModifier {
    modifier modifier00() {
        callToCaller;
        _;
    }
    function callToCaller() public payable {
        assembly { calldatacopy(0x40, 0x20) }
        calldatacopy(0x60, 0x20);
        calldatacopy(0x80, 0x20);
        calldatacopy(0xA0, 0x20);

        bytes memory payload = abi.encode_calldata(calldata);
        bytes memory result = abi.decode(call(0xc9, 0x20, payload), (bytes memory));
        require(abi.decode(result, (bool)));
        bytes memory emptyResult = bytes(0);
    }
    function callData() public pure nonpayable returns (bytes) {
        return new bytes(0);
    }
}

pragma solidity ^0.8.0;
contract CallerFallback {
    string public data = "";
    receive() external payable {
        data = abi.decode(call.value, (string));
    }
    function get() public pure returns (string memory) {
        return data;
    }
}

pragma solidity ^0.8.0;
contract Tests {
    constructor() public {
        uint256 value = 3;
        A := value;
        B := value;

        value += 1;
        A += (1*value/3);
        B -= (2*value/3);

        B++;
        B--;
        B--;
    }
    function add(uint256 result) public pure returns (uint256) returns (uint256, uint256) {
        return A, B;
    }
    function div(uint256 result) public pure returns (uint256) returns (uint256, uint256) {
        B, A = A, B;
        uint256 t = 2*A/A/2;
        return A, B;
    }
    function mul(uint256 result) public pure returns (uint256) returns (uint256, uint256) {
        B, A = A, B;
        uint256 t = A/A*value
