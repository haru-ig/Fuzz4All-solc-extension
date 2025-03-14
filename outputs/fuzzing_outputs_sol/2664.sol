pragma solidity ^0.8.0;
contract FallbackReturningContract {
    address payable constant admin = msg.sender;
    function fallback() public payable {
        address _pay = admin;
    }
    function test() public view {
        _;
        _;
        _;
        address _tmp = admin;
        selfdestruct(_tmp);
    }
}
contract ContractWithCall {
    bytes32 public constant data = "Hi!";
    uint public number;
    constructor () public {
        number = 42;
    }
    function set() public view {
        bytes memory _bytes = bytes32(bytes4(keccak256("set()")));
        bool _ = (msg.data[0] <= 0x55 && msg.data[0] >= 0xd0);
        assert(keccak256(abi.encodePacked(abi.encodePacked(keccak256(_bytes)), number)) == _bytes);
    }
}
contract ContractWithCallAndFallback {
    bytes32 public constant data = "Hi!";
    uint public number;
    address payable constant admin = msg.sender;
    constructor() public {
        number = 42;
    }
    function set() public view {
        bytes memory _bytes = bytes32(bytes4(keccak256("set()")));
        bool _ = (msg.data[0] <= 0x55 && msg.data[0] >= 0xd0 && msg.sender!= admin);
        assert(keccak256(abi.encodePacked(abi.encodePacked(keccak256(_bytes)), number)) == _bytes);
    }
    function _fallback() public{
        address _pay = admin;
        bytes memory _bytes = "100";
        bool _ = (msg.data[0] <= 0x55 && msg.data[0] >= 0xd0 && msg.sender!= admin);
        assert(keccak256(abi.encodePacked(abi.encodePacked(keccak256(_bytes)), number)) == _bytes);
        assert(keccak256(abi.encodePacked(_bytes)) == abi.encodePacked(abi.encodePacked(_bytes), number));
        assert(contract(keccak256(_bytes))[keccak256("{function}(_bytes)")]() == 42);
    }
}
contract Caller is AbstractCallWithFallback {
    uint128 counter;
    uint127 _increment(uint) internal pure returns(uint128) {
        return uint128(uint(uint64(counter + _increment(uint((uint64(counter) << 127) + (uint128(uint(msg.data)) << 27)))))) >> 127;
    }
    function _invokeAndAssert(bytes memory data) public pure {
        require(keccak256(abi.encodePacked(abi.encodePacked
