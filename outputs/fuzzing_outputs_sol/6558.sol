pragma solidity ^0.8.0;
contract PayableFallback {
        function receive() payable {
            Lib.foo();
            Lib.foo();
        }
}

pragma solidity ^0.8.0;
contract ContractFallback {
        function foo() public pure returns (uint) {
                return 45;
        }
}


pragma solidity ^0.8.0;
contract ContractExample is ContractFallback {
        mapping (address => uint) balances;
        address payable fallbackContract;
        string testString = "Solidity: ";
        event LogTest(string myEventArg);

        constructor(address payable _fallbackContract)
        payable ContractFallback(_fallbackContract)
        {}

        function foo() public payable {
                fallbackContract.transfer(msg.value);
        }

        function foo2() public payable {
                fallbackContract.transfer(msg.value);
                fallbackContract.transfer(msg.value);
        }

        function testEventsContractFallback() public {
                fallbackContract.transfer(msg.value);
                fallbackContract.transfer(msg.value);
                fallbackContract.transfer(msg.value);
        }

        function testEthereum() public  {
                fallbackContract.transfer(msg.value + msg.value/2);
        }

        function testEventsContract() public {
                fallbackContract.transfer(msg.value + msg.value/2);
        }

        function testStorageContract() public {
                fallbackContract.transfer(address(this).balance);
        }

        function testGetBalance() public view returns (uint) {
                return 1;
        }
}
