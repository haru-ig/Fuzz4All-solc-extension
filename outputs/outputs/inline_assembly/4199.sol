pragma solidity ^0.8.0;
interface IBullToken{
    function mint(address _owner,address _spender,uint256 _amount) external returns(uint256);
    function burn(address _owner,address _spender,uint256 _amount) external;
}
address public owner;
contract Token is IBullToken{
    mapping (address => uint) public balances;
    mapping (address => mapping (address => uint)) public allowed;
    uint256 totalSupply;

    constructor (uint _totalSupply) {
        totalSupply = _totalSupply;
        balances[msg.sender] = totalSupply;
    }


    function mint(address _to,uint _amount) external returns(uint256) {
        require (_to!= address(0));
        balances[msg.sender] = balances[msg.sender].add(_amount);
        balances[_to] = balances[_to].sub(_amount);

        emit Transfer(address(0),address(this),(_amount),block.timestamp);

        return (_amount * (10 ** 18));
    }



    function burn(address _to,uint _amount) external {
        require(_to!= address(0));
        require(balances[_to] > _amount);
        balances[_to] = balances[_to].sub(_amount);
        balances[msg.sender] = balances[msg.sender].add(_amount);

        emit Transfer(address(this),address(_to),(_amount),block.timestamp);
    }


    function setAllowance(address _spender, uint _amount) external {
        allowed[msg.sender][_spender] = _amount;
        emit Approval(msg.sender, _spender, _amount);
    }



    function allowance(address _owner,address _spender) public view returns (uint) {
        return allowed[_owner][_spender];
    }


    function transfer(address _to,uint _amount) external {
        return transferUnderlying(msg.sender,_to,_amount);
    }

    function transferFrom(address _owner,address _from,uint _amount) external returns(bool) {
        return transferUnderlying(_owner,_from,_amount);
    }

    function transferUnderlying(address _owner,address _to,uint _amount) private returns(bool){
        require(_owner!= address(0));
        require(_to!= address(0));
