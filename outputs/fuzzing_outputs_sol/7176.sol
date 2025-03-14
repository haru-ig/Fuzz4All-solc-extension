pragma solidity ^0.8.0;
interface IExample2 {
    function setCheckFor(address c) external;
    function isValid() external view returns(bool);
    function getCheckFor() external view returns (bytes32);
}
contract Example2 is IExample2{
    bytes32 constant SAFETY = keccak256("hello world");
    mapping(address => bytes32) public checkFor;
    function setCheckFor(address c) public returns(bytes32 success) {
        success = c!= address(0);
        checkFor[c] = SAFETY;
    }
    function isValid() public view returns(bool) {
        return checkFor[msg.sender] == SAFETY;
    }
    function getCheckFor() public view returns (bytes32) {
        return checkFor[msg.sender];
    }
}

pragma solidity ^0.8.0;
interface IRabbit {
  event Whispered(address recipient, uint wetLoudness, bytes32 message);
  function callAndReceive(address sender, bytes memory data) external payable returns (bytes memory);
  function whisper(uint loudness, bytes32 message) external;
}
contract Example3 is IRabbit{
    function callAndReceive(address sender, bytes memory data) public virtual override returns(bytes memory) {
        emit Whispered(msg.sender, uint(msg.value), data);
        if (data.length == 42) {
            receiverFallback(sender, address(this));
            return data;
        }
    }
    function receiverFallback(address sender, address) pure virtual internal {
        require(msg.data.length >= 42);
        require(msg.data.substring(0, 42) == "0x00000000000000000000000000000000001200");
        emit Whispered(sender, uint(msg.value), msg.data);
    }
}

pragma solidity ^0.8.0;
interface IA is A, B, C, D, E
{
    function
