pragma solidity ^0.8.0;

contract HelloWorld {
    function HelloWorld() public {
        log0("This is the first log. There will be no reverts.");
        log1(uint256(1));
        log2(uint256(12));
        log3(uint256(-12));
        log4("The last log");
    }
    function log0(string memory message) public {
        logHelper(message, 0);
    }
    function log1(uint256 value) public {
        logHelper(uint256ToString(value), 1);
    }
    function log2(uint256 value) public {
        logHelper(uint256ToString(value), 2);
    }
    function log3(uint256 value) public {
        logHelper(uint256ToString(value), 3);
    }
    function log4(string calldata message) public {
        logHelper(stripBrackets(message), 4);
    }
    function logHelper(string memory message, uint32 n) public {
        require(msg.sender == address(this), 'Caller is not contract');
        if (n < 5) {
            msg.sender.call{value: now}('');
        }
        emit Log(n, message);
    }
    function uint256ToString(uint256 _value) internal pure returns (string memory ret) {
        if (_value < 10) {
            ret = '0' + uint2str(_value);
        } else {
            ret = uint2str(_value);
        }
    }
    function uint16ToString(uint16 _value) internal pure returns (string memory ret) {
        ret = uint2str(uint256(_value));
    }
    function uint32ToString(uint32 _value) internal pure returns (string memory ret) {
        ret = uint2str(uint256(_value));
    }
    function uint64ToString(uint64 _value) internal pure returns (string memory ret) {
        ret = uint2str(uint256(_value));
    }
    function int64ToString(int64 _value) internal pure returns (string memory ret) {
        ret = uint2str(uint256(_value));
    }
    function addressToString(address _value) internal pure returns (string memory ret) {
        ret = bytesToAddress(_value);
    }
    function bytesToAddress(bytes memory
