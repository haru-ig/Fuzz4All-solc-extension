pragma solidity ^0.8.0;
contract Example6 {
    address public valueFromCaller;
    mapping (address => mapping (uint => bytes32)) public mymap;
    function set(address key, uint x) public {
        bytes32 mybytes = bytes32(uint(x));
        mymap[key][x] = mybytes;
    }
    receive() external payable {
        valueFromCaller = msg.sender;
    }
}

pragma solidity ^0.8.0;
contract Caller {
    address public valueFromCaller;
    function example6() public payable {
        Example6 Test = new Example6();
        Test.set(address(this),1);
        Test.set(address(this),2);
        valueFromCaller = msg.sender;
        valueFromCaller.transfer(address(msg.sender).balance);
    }
    receive() external payable {
        valueFromCaller = msg.sender;
    }
}
