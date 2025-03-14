pragma solidity ^0.8.0;
contract BasicToken {
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);
    function transfer(address _to, uint256 _value) virtual public returns (bool);
    function transferFrom(address _from, address _to, uint256 _value) virtual public returns (bool);
    function approve(address _spender, uint256 _value) virtual public returns (bool);
    function allowance(address _owner, address _spender) virtual public view returns (uint256);
}
contract StandardToken is BasicToken {
    mapping(address => address) internal _allowed;
    mapping(address => uint256) internal balances;
    mapping(address => mapping(address => uint256)) internal allowed;
    uint256 internal totalSupply_;
    function totalSupply() public view returns (uint256);
    function balanceOf(address _owner) public view returns (uint256);
    function approve(address _spender, uint256 _value) public virtual returns (bool);
    function transfer(address _to, uint256 _value) public virtual returns (bool);
    function transferFrom(address _from, address _to, uint256 _value) public virtual returns (bool);
    function increaseApproval(address _spender, uint _addedValue) public virtual returns (bool);
    function decreaseApproval(address _spender, uint _subtractedValue) public virtual returns (bool);
}

pragma solidity >=0.8.0;
contract Caller {
    function call1(address _func) public pure returns (address) {
        return _func;
    }
    function call2(address _func) public returns (uint) {
        require(_func.isContract());
        bytes calldatacopy;
        (bool success,, bytes memory reason,, ) = abi.contract(address (calldatacopy)).call{value: this.balance}(calldatacopy);

    }
}
