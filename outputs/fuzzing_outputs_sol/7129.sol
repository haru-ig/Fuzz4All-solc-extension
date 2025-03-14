pragma solidity ^0.8.0;
interface IVault {

    function get() public view returns(bytes32);
}
interface ICallIn {
    function call() public payable;
}
pragma solidity ^0.8.0;
contract CallIn {
    address public immutable creator;
    constructor() public {
        creator = msg.sender;
    }

    function () public payable {
        require(msg.value == 1 ether, "incorrect ether");
        ICallIn(msg.sender).call();
    }

    function fallback() public payable {
        require(msg.value == 1 ether, "incorrect ether");
        uint[] calldata _returnData = address.call.value(2 ether)("I am back");


        require(_returnData[1] == 0x09000000, "incorrect data");
        emit Log(_returnData);
    }
}
pragma solidity ^0.8.0;
contract IExample {
    address payable addr;
    modifier onlyMe() { if (msg.sender == addr) _; }
    bytes32 constant SAFETY = keccak256("hello world");
    mapping(address => bytes32) public checkFor;
    function setCheckFor(address c, bytes32 b) public onlyMe {
        require(hasPassed(b));
        checkFor[c] = b;
    }
    function isValid() public view returns(bool) {
        if (address(this).balance == 0) {
            return false;
        }
        return checkFor[msg.sender] == SAFETY;
    }
    function hasPassed(bytes32 b) public view returns (bool) {
