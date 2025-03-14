pragma solidity ^0.8.0;
contract NewY {
    mapping(address => bytes) public state;
    address public owner;
    constructor() public {
        owner = msg.sender;
        state[msg.sender] = abi.encode(address(this));
    }
    modifier onlyOwner() {
        require(msg.sender == owner,"Not the Owner");
        _;
    }



    function getBalance(address _addr) public returns(uint256) {
        uint256 balance;
        assembly {
            balance := mload(add(_addr, 0x20))
        }

        return balance;
    }
}
contract NewY2 is OldY, NewY {
    function o(uint256 k) public override returns(uint256 result) {

        uint256 x = k * x * y / 2 + x + y;

        while(k!= (x/x+x*y*k/2)) {
            x = k / x + x*y*k/2 - k + y;
        }

        return x;
    }
}
