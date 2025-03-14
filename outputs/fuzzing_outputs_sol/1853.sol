pragma solidity ^0.8.0;
contract FallbackModified {
    bytes32 public constant _F1 = "F1";
    uint constant _gasPrice = 1;
    uint gas = 0;
    bytes32 _ret;
    modifier onlyOneValue(uint value) {
        require(value == _value, "Wrong value");
        _;
    }
    constructor(bytes32 _ret_) {
        _ret_ = _ret_;
    }
    fallback() payable external {
        gas = gas + _gasPrice;
        require(msg.value == _value, "Wrong value");
        _ret = _ret_;
    }
    function fallbackTest(uint x) public onlyOneValue(x) {
        bytes32 hash = keccak256(abi.encodePacked(
            keccak256(abi.encodePacked("Mutated: ", msg.value, msg.data)),
            _F1
        ));
        _gasPrice = 2;
        _ret = hash;
    }
}
address[] ids = new address[](0x10);
void setID(address _id, uint _index) {
    ids[_index] = _id;
}
bytes32 public constant _F1 = "F1";
contract FallbackFaker is FallbackModified {
    uint constant _gasPrice = 22;
    address public _origin;
    address internal _fallback;
    constructor(address _fallback_) {
        _fallback_ = _fallback_;
    }
    function fallbackTest(uint x) public onlyOneValue(x) {
        bytes32 hash = keccak256(abi.encodePacked(
            keccak256(abi.encodePacked("Mutated: ", msg.value, msg.data)),
            _F1
        ));
        _gasPrice = 1;
        _origin = msg.sender;
        _fallback = address(0x677a1b90);
        require(address(this) == _origin);

    }
}
contract Caller {
    FallbackFaker public immutable contract;
    FallbackFaker private immutable _caller;

    address[] ids = new address[](0x10);
    constructor(address _caller_) {
        _caller_ = FallbackFaker(_caller_);
        contract = _caller_;
    }

    function setID(address _id, uint _index) {
        ids[_index] = _id;
        contract = FallbackFaker(ids[_index]);
    }
    fallback() payable external {
        bytes32 hash = keccak256(abi.encodePacked(
            keccak256(abi.encodePacked("Mutated: ", msg.value, msg.data)),
            _F1
        ));
        _caller.fallbackTest(0);
        _caller.fallback
