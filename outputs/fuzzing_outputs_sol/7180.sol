pragma solidity ^0.8.0;
interface IExample2 {
    function setCheckFor(address c) external;
    function isValid() external view returns(bool);
    function getCheckFor() external view returns (bytes32);
}
contract ExampleTwo is IExample1 {
    address payable addr2;
    bytes32 constant SAFETY2 = keccak256("hello world 2");
    mapping(address => bytes32) public checkFor2;
    function setCheckFor(address c) public {
        require(c!= address(0));
        checkFor2[msg.sender] = SAFETY2;
    }
    function isValid() public view returns(bool) {
        return checkFor2[msg.sender] == SAFETY2;
    }
    function getCheckFor() public view returns (bytes32) {
        return checkFor2[msg.sender];
    }
}
