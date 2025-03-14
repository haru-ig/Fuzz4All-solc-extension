pragma solidity ^0.8.0;


contract MyContract {

    uint64 private internalCounter;
    mapping(address => uint64) private balanceOf;

    function increaseCounter() public {
        uint64 newCount = internalCounter++.increment(1);
        balanceOf[msg.sender] = newCount;
    }

    function getCounter() public view returns (uint64) {
        return internalCounter;
    }

    function withdraw() public {
        uint64 balance = balanceOf[msg.sender];
        require(balance > 0, "Balance is zero.");
        (bool success, ) = msg.sender.call{value: balance}("");
        require(success, "Expected success");
        internalCounter -= balance;
        balanceOf[msg.sender] = 0;
    }
}
{
    function getBalance(address addr) public view returns (uint64 amount) {
        return balanceOf[addr];
    }
    function getBalance2(address addr) public view returns (uint64 amount) {
        MyContract contractInstance = new MyContract();
        return balanceOf[contractInstance.balanceOf(addr)];
    }
}


pragma solidity ^0.8.0;

contract Withdraw {
    address payable internal withdrawAddr;

    constructor(address _withdrawAddr) {
        withdrawAddr = payable(_withdrawAddr);
    }

    fallback() external payable {
        withdrawAddr.transfer(msg.value);
    }
}

{
    function withdrawFromContract(address addrOfContract) public {
        Withdraw withdrawInstance = new Withdraw(addrOfContract);
        withdrawInstance.withdraw{value: address(this).balance}();
    }
}

pragma solidity ^0.8.0;

contract PayableContract {
    uint public payableBalance = 0;

    constructor (uint x) public {
        payableBalance = x;
    }

    function withdrawEther() public {
        payable(msg.sender).transfer(address(this).balance);
    }
}

contract Main {
    constructor(uint x) public {
        uint payableBalance = x;
    }

    function payableBalance(uint i) public view returns (uint payable){
        return pay
