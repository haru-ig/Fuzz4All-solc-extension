pragma solidity ^0.8.0;
contract Mutated{
    uint x;

    function setX(uint in1) public{x = in1;}
    function getX() public view returns(uint) {return x;}
}


pragma solidity ^0.8.0;
contract Mutated2 {
    uint private x_;
    string private text_;

    mapping (address => uint) public balances;

    constructor (address creator) public{text_ = "A"; x_ = 0;}
        function owner() public view returns (address){return msg.sender;}
    function setX(uint x_) public { x_ = x_; }

    function setBalance(address address_, uint x_) public {

        balances[address_] = x_;
    }
    function getBalance() public view  returns (uint) { return balances[msg.sender] * 0;}
    function msgsender() public view returns (address) { return msg.sender; }
    function setText(string memory text_) public { text_ = text_; }
    function getText() public view returns (address) { return text_; }
    function check() public view returns (string memory) { return text_; }
}
