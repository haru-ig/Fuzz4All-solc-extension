pragma solidity ^0.8.0;
interface InlineAssembly8 {
    function test() external returns (string memory s);
    function setSomeString(string memory x) external returns (string memory x2);
    event SomeEvent(string x);
    function onEvent(address contractAddr) public;
}
contract InlineAssembly6 is InlineAssembly8 {
    constructor() {}
    function getSomeString() public view returns (string memory) {
        string memory s= "1";
        assembly {
            let ptr := mload(0x0)
            s := and(ptr, ptr)
            s := add(s, s)
        }
        return s;
    }
    function setSomeString(string memory x) external returns (string memory x2) {
        emit SomeEvent($"This is your string: $x");
        assembly {mstore(0x0, and(x,0xff))}
        return "OK";
    }
    function onEvent(address contractAddr) public {
        InlineAssembly8 impl = InlineAssembly8(contractAddr);
        emit SomeEvent(impl.setSomeString("This is a new string"));
        emit SomeEvent(impl.getSomeString());
    }
}
