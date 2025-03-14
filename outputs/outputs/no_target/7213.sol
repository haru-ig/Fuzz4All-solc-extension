pragma solidity ^0.8.0;
contract PreviousGeneration {
    mapping (address => uint) private _balances;
    mapping(address => mapping(uint => uint)) private _allowances;
    function getBalance(address addr) public view returns(uint) {
    unchecked {
      return _balances[addr];
    }
   }
   function transfer(address to, uint value) public returns(bool) {
    unchecked {
      _transfer(_msgSender(), to, value);
      return true;
    }
   }
   function transferFrom(address from, address to, uint value) public returns(bool) {
    unchecked {
      _allowances[from][msg.sender] = _allowances[from][msg.sender].sub(value);
      _transfer(from, to, value);
      return true;
    }
   }
   function approve(address spender, uint value) public returns(bool) {
    unchecked {
      _allowances[msg.sender][spender] = value;
      emit Approval(msg.sender, spender, value);
      return true;
    }
   }
   function increaseAllowance(address spender, uint addedValue) public returns(bool) {
    unchecked {
      _allowances[msg.sender][spender] = _allowances[msg.sender][spender].add(addedValue);
      emit Approval(msg.sender, spender, _allowances[msg.sender][spender]);
      return true;
    }
   }
   function decreaseAllowance(address spender, uint subtractedValue) public returns(bool) {
    unchecked {
      _allowances[msg.sender][spender] = _allowances[msg.sender][spender].sub(subtractedValue);
      emit Approval(msg.sender, spender, _allowances[msg.sender][spender]);
      return true;
    }
   }
   event Approval(address indexed _owner, address indexed _spender, uint _value);
   event Transfer(address indexed _from, address indexed _to, uint _value);
}
