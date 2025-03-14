pragma solidity ^0.8.0;
contract Test71 is ITest71 {
    uint256 public num1 = 0;
    uint256 public num2;
    mapping(address => bool) users;
    constructor() public {
        num1 += 1;
        num2 += num1;
        users[msg.sender] = true;
        bar();
    }
    function bar() private pure returns(int32) {
        return 1;
    }
    function bar2() public pure returns(int32) {
        return 1;
    }
    function bar3() public pure returns(int32) {
        return 1;
    }
    modifier onlyAddr1 {
        require(users[msg.sender]);
        _;
    }
    modifier onlyAddr2 {
        require(users[msg.sender] && users[msg.sender]);
        _;
    }
    modifier onlyAddr3 {
        require(users[msg.sender] || users[msg.sender]);
        _;
    }
    modifier onlyAddr4 {
        require(users[msg.sender] && (users[msg.sender] || users[msg.sender]));
        _;
    }
    modifier onlyAddr5 {
        require((users[msg.sender] || users[msg.sender]) && (users[msg.sender] || users[msg.sender]));
        _;
    }
}
