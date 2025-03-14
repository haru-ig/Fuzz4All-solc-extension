pragma solidity ^0.8.0;
contract bullshit19 {
    mapping(bytes32 => string) private _owner;
    mapping(uint => uint) private _balance;
    constructor() {

        _owner["0xebe688bf2d9e71c2ef4ddee03e2c63576a1f0b5b"] = "test";
        _balance[42] = 0;
    }
    event mint(address indexed to, uint256 price);
    uint256 public price;
    uint public n;
    function() public payable {

        _balance[msg.sender]++;
        mint(msg.sender, 0);
    }
    string getOwner(address ad) public view returns (string memory) {
        return _owner[ad];
    }
    uint getBalance(address ad) public view returns (uint) {
        return _balance[ad];
    }
}
