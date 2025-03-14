pragma solidity ^0.8.0;
contract Example {

    address public contractAddress;

    constructor() {
    }
    function test() public {
        contractAddress = address(new Example());
        require(msg.value == 0, "The contract doesn't have a fallback function.");
        uint x = getX(contractAddress);
        require(x > 0, "The contract returned a zero value.");
    }
    uint public constant constant_var = 3;

    function getX(address _contractAddress) public view returns (uint) { return uint(keccak256(abi.encode(_contractAddress, constant_var))); }
}

contract Caller {
    address public contractAddress;
    Example[] public calls;
    constructor() {
        contractAddress = address(new Example());
        calls.push(Example(contractAddress));
    }
    function getCall() public payable returns (uint) {
        return calls[msg.sender].getCall();
    }
    function test() public {
        addressesForIndex(msg.sender);
    }
    function addressesForIndex(address _contractAddress) public {
        uint x = getX(_contractAddress);
        uint[] memory numbers = new uint[](1);
        numbers[0] = x;
        bytes[] memory strings = new bytes[](1);
        strings[0] = bytes("This is a test string");
        calls[msg.sender].testCall();
        calls[msg.sender].getTest(_contractAddress, x, bytes32(0), 3, numbers, strings);
    }
    function getX(address _contractAddress) public view returns (uint) {
        require(address(this) == _contractAddress, "Wrong contract address");
        return uint(keccak256(abi.encode(_contractAddress)));
    }
    function getTest(address _contractAddress, uint _x, bytes32 _bytes32, uint _number, uint[] memory _numbers, bytes[] memory _strings) public view returns (uint) {
        require(address(this) == _contractAddress, "Wrong contract address");
        return uint(keccak256(abi.encode(_contractAddress, constant_var)));
    }
}
