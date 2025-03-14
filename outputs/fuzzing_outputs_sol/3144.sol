pragma solidity ^0.8.0;
contract Contract20Mut{
    event Fulfilled(address owner, uint256 indexed value);
    uint256 public num;
    receive() external payable {
        num += 1;
        emit Fulfilled(msg.sender, num);
    }
    function getNumber() public view returns(uint) {
        return num;
    }
    function setNumber(uint _value) public {
        num = _value;
    }
}
contract Contract20N{
    event Fulfilled(address indexed owner, uint256 indexed value);

    uint256 public num;
    receive() external payable {
        num += 1;
        emit Fulfilled(msg.sender, num);
    }
    function getNumber() public view returns(uint) {
        return num;
    }

    function setNumber(uint _value) public {
        num = _value;
    }
}
contract Caller {


    event Fulfilled(address indexed owner, uint256 indexed value);
    uint256 public num;
    receive() external payable{
        num += 1;
        emit Fulfilled(msg.sender, num);
    }
    function getNumber() public view returns(uint) {
        return num;
    }
    function payer() public view returns(address payable) {
        return msg.sender;
    }
    function getCallerPayer() public view returns(address payable) {
        return payer();
    }
}

pragma solidity ^0.8.0;
contract Contract18Mut {
    event Fulfilled(address owner, uint256 indexed value);
    uint256 public num;
    receive() external payable{
        num += 1;
        emit Fulfilled(msg.sender, num);
    }
    function getNumber() public view returns(uint) {
        return num;
    }
    event Refunded(uint256 amount);
    function pay() public payable {
        emit Refunded(msg.value);
    }
    function callWithPay(address payable to) public payable {
        to.call{value: msg.value}{gas: gasleft()}("");
    }
}
/* Please modify the original program Contract19 to use call method, and to print out the return value of
 msg.
