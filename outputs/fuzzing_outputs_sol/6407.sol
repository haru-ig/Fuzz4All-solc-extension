pragma solidity ^0.8.0;
contract Greeter {
    string public hello;
    function setHello(string memory _hello) public {
        hello = _hello;
    }
    function getHello() public view returns (string memory) {
        return hello;
    }
}
