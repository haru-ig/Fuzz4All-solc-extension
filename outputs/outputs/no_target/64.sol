pragma solidity ^0.8.0;
interface IERC223Receiver {
    function onERC223Received(address _operator, address _from, uint256 tokenId, bytes memory _data) external returns (bytes4);
}
contract ProxyFactory {
    event Registered(Iproxy instance, Address contractAddress);
    event Transferring(Iproxy instance);
    constructor() public {}

    struct Iproxy {
        bytes public code;
        uint16 public index;
        constructor(address owner, bytes memory code_, uint16 _calldata) public {
            bytes memory _hash = abi.encodePacked(keccak256(code_), abi.encodeWithSignature("initialize()"));
            assembly {
