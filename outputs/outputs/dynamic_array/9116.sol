pragma solidity ^0.8.0;




pragma solidity ^0.8.0;


interface IERC20 { function balanceOf(address owner) external view returns (uint256 amount); }

contract Test {
    IERC20 token;
    constructor() { token = IERC20(0x0000000000000000000000000000000000000000); }
    function myTest(uint amount) public {
        token.send(msg.sender, amount);
    }
}


contract Test {
    event NewEvent(uint x);
    event Transfer(address indexed from, address indexed to, uint x);
    event Mint(address indexed to, uint x);
    event Burn(uint x);
    mapping(address => uint256) private balanceOfs;
    mapping(address => mapping(address => uint256)) private allowances;

    constructor() {
        balanceOfs[msg.sender] = 100;
        allowances[msg.sender][address(this)] = 1000;
        allowances[address(this)][msg.sender] = 1000;
    }

    function transfer(address _to, uint256 _x) public {
        balanceOfs[msg.sender] -= _x;
        balanceOfs[_to] += _x;
        emit Transfer(msg.sender, _to, _x);
    }
    function transferFrom(address _from, address _to, uint _x) public {

        require(_x <= balanceOfs[_from]);
        require(_x <= allowances[_from][msg.sender]);

        balanceOfs[_from] -= _x;
        balanceOfs[_to] += _x;
        allowances[_from][msg.sender] -= _x;
        emit Transfer(_from, _to, _x);
    }
    function balanceOf(address _addr) public view returns (uint _x) { return balanceOfs[_
