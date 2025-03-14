pragma solidity ^0.8.0;
abstract contract AB {
    function fallback(address _to, uint256 _value, bytes memory _data) public payable virtual;
}
contract Fallback {
    function invalid() public pure virtual returns (bytes memory) {}
}
