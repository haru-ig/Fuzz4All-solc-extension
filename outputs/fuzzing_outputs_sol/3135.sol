pragma solidity ^0.8.0;
contract Contract20Mut{
    event Fulfilled(address owner, uint256 indexed value);

    modifier payable() {
        require(msg.value > 0, "");
        _;
    }

    uint256 public num;
    receive() payable{
        return;
    }
    function getNumber() public view returns(uint) {
        return num;
    }
}
contract Contract20N{
    event Fulfilled(address indexed owner, uint256 indexed value);

    modifier payable() {
        require(msg.value > 0, "");
        _;
    }

    uint256 public num;
    receive() payable{
        return;
    }
    function getNumber() public view returns(uint) {
        return num;
    }
}
