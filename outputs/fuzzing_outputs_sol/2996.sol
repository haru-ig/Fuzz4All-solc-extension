pragma solidity ^0.8.0;
contract ModdedCaller {
    mapping(address => uint256) private balance;
    function sendEther(address payable to, uint256 amount) public payable {
        (bool success, ) = to.call{value: amount}("");
        require(success, "Failed to send Ether");
        balance[to]++;
    }
    function balanceOf(address address_) public view returns (uint256) {
        return balance[address_];
    }
}






pragma solidity ^0.8.0;


contract FallbackAddress {
    function() pure public{

    }
}
