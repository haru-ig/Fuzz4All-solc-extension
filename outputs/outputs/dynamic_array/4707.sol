pragma solidity ^0.8.0;
address deployer = 0xD02AA0cC733D15595D072F443A5F5911D08f9A28;
contract Test {
    address payer;
    uint initialValue;

    function MutateData() public pure {
        initialValue = 0x42;
    }

    function changeAddress() public payable {
        require(msg.value >= initialValue);
        payer.transfer(msg.value);
    }

    function MutateCodeWithoutAddress() public {

        payer = msg.sender;
    }

    function MutateCodeWithAddress() public {

        deployer.transfer(msg.value);
    }

    function MutateCodeWithAddressWithoutValue() public pure {

        deployer.transfer(0);
    }
}


pragma solidity ^0.8.0;
contract GreeterTester {
    function greeter(string memory name) public {
        string memory welcome = "Welcome to the Greeter! Hello, " + name;
        assembly {

            let size := mload(welcome)
            let memPtr := mload(0x40)
            memPtr := add(memPtr, 0x20)

            returndatacopy(memPtr, 0x40, size)
        }
        message(welcome);
    }
}
