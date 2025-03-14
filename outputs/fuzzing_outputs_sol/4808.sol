pragma solidity ^0.8.0;
contract MutateSemantically {
    function mutated() public {
        callWithReturningData();
        callWithoutReturningData();
        returnCall();
    }

    function callWithReturningData() public payable {
    }
    function callWithoutReturningData() public payable {
    }

    function returnCall() public payable {
        address receiver = msg.sender;
        address caller = msg.sender;
        bytes memory data = abi.encode(address(this), 555);
        receiver.call{value: ethers.utils.padLeft{length: 60, value: 200}('data')}(data);
    }
}


pragma solidity ^0.8.0;
contract MutateSemantically {
    address[3] var a;

    function mutated() public {
        a[0] = false;
        a[0] = true;
    }


    function changeStorage() public {
        a[1] = false;
        a[1] = true;
    }
}
