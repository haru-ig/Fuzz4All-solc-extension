pragma solidity ^0.8.0;
contract Test {
    uint id = 1;
    uint256 private counter;

    function setID() public {
        id =1;
    }
    function getID() public view returns (uint) {
        return id+1;
    }
    function incID() public {
        id=id+1;
    }
}


pragma solidity ^0.8.0;
contract Test {
    function test() public{
        uint256[0] memory testArr = new uint256[](0);
        testArr.length = 1;
    }
}
contract Test {
    function test() public pure {
        uint256[0] memory testArr;
        testArr.length = 0;
        testArr = new uint256[](1);
    }
}
contract Test {
    function test() public pure {
        uint256[bool](false);
    }
}


pragma solidity ^0.8.0;
contract TestToken {
    using SafeMath for uint;
    mapping (address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed;

    uint256 totalSupply_;
    string public name_;
    string public symbol_;
    uint8 public decimals_;


    constructor (
        string memory _name,
        string memory _symbol,
        uint256 _initialSupply,
        uint8 _decimals,
        string memory _initialCreator
    ) {
        totalSupply_ = _initialSupply;
        balances[address(this)] = totalSupply_;
        name_ = _name;
        symbol_ = _symbol;
        decimals_ = _decimals;
    }



    function transfer(address recipient, uint256 amount) public returns (bool) {
        _transfer(address(0), recipient, amount);
        return true;
    }



    function approve(address spender, uint256 value) public returns (bool) {
        allowed[msg.sender][spender] = value;
        emit Approval(msg.sender, spender, value);
        return true;
    }
