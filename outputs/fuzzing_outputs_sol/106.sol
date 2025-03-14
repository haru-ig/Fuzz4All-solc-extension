pragma solidity ^0.8.0;
contract Greeter {
    address payable private owner;
    address payable private manager;
    bool public greeted = false;
    uint public greeterCount;



    constructor() external {
        owner = msg.sender;
        manager = msg.sender;
    }

    function getGreeterCount() public view returns (uint64) {
        return greeterCount;
    }
    function greet() public payable {
        require(msg.value == 0);

        greeterCount ++;
        OwnerGreet(msg.sender, msg.value);
        EmitGreet("Hello, World");
        greeted = true;
    }

    modifier onlyManager() {
        require(manager == msg.sender);
        _;
    }
    function setManager(address newManager) onlyManager public {
        manager = newManager;
    }
    function emitGreet(string memory message) public {
        EmitGreet(msg.sender, msg.value, message);
    }
    function OwnerGreet(address payable a, uint value) public {
        emit Greeted(a, value, "", "", "");
    }
    function EmitGreet(address a, uint b, string memory c, bytes32 d, bytes memory e) internal {
        bytes memory data = byte(0xF0);
        data = abi.encode(a, greeterCount, greeted, b, c, d, e);
        emit CallAndFallbackFunctionThreePlusFallbackFunctionThree(data, b, c, d, e);
    }

    receive() external payable {}
}
