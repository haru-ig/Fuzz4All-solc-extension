pragma solidity ^0.8.0;
contract Example19 {
    contract Caller {
        function test(uint256 input) external payable {
            CallerExample caller = new CallerExample();
            caller.example19(input);
        }
        function example19(uint256 input) public payable {
            payable(address(0)).transfer(address(this).balance);
        }
    }
    contract CallerExample {
        address _to;

        function CallerExample() public {
            _to = msg.sender;
        }

        function example19(uint256 input) public payable {
            if (!payable(address(_to)).send(input)) revert();
        }
    }
}

pragma solidity ^0.8.0;
contract Example20 {
    function example20() public pure {
        require(msg.value >= 1 ether);
    }
}
