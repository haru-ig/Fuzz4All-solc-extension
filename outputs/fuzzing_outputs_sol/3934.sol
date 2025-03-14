pragma solidity ^0.8.0;
contract Example15 {
     fallback (address) {}
}
pragma solidity >=0.8.0;
contract Example16 {
}
pragma solidity >=0.8.0;
contract Example17 {
     function f(address a) public {   }
}
contract Example18 is Example13, Example16 { }
pragma solidity >=0.8.0;
contract Example19 is Example14, Example15, Example17 { }
pragma solidity >=0.8.0;
contract Example20 is Example18, Example19 { }

contract Example21 is Example15, Example16 {
    receive () external payable {}
    function f(address a) public {
        require(0 == a.call{ value: address(this).balance }(""), "0 == a.call{ value: address(this).balance }("")");
        fail("This line should not reach");
    }
    fallback(address) {
        fail("This line should not reach");
    }
}

contract Example22 {
    address payable owner;
    uint amount = 10000000000;
    address payable receiver;

    constructor () {
        owner = msg.sender;
        receiver = payable(msg.sender);
    }

    function () {
        recvEther();

    }

    function pay() external {
        payable(this).transfer(amount);
    }

    receive() external {
        recvEther();

    }

    function recvEther() public {
        require(0 == receiver.send{ value: msg.value }(""), "0 == receiver.send{ value: msg
