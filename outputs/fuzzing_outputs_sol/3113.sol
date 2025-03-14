pragma solidity ^0.8.0;
contract Contract14Mut{
    event Fulfilled(uint indexed value);
    uint public num;
    receive() external payable {
        num += 1;
        emit Fulfilled(num);
    }
}
contract Contract14N{
    event Fulfilled(address indexed owner, uint256 indexed value);
    uint public num;
    receive() external payable {
        num += 1;
        emit Fulfilled(msg.sender, num);
    }
}
contract Caller {
    function test() public {
        Contract13Mut x = new Contract13Mut();

        x.receive();
        x.receive();
        x.receive();

        x.test();
        x.test();
        x.=2;
        x.test();
    }
}
