pragma solidity ^0.8.0;
contract MutatedStorage7 {
    string private name;
    enum Color { Red, Orange, Yellow, Green, Blue, Indigo, Violet, Cyan }
    function () public payable {
        name = msg.sender;
    }
    function printFullName() public view {
        address[] memory args = new address[](1);
        args[0] = address(this);
        bool success = (address(41).call{value: 0}(abi.encodeWithSignature("fallback(address)"):abi.decode(msg.data, (address[])))) return msg.value;
    }
    function printName() public view returns(string memory) {
        string memory result = name;
        return result;
    }
}
