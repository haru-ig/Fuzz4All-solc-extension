pragma solidity ^0.8.0;
contract IERC20Token is IERC20Metadata{
   address public owner;
   string internal _name;
   string internal _symbol;
   uint8 internal _decimals;
   mapping (address => uint256) private _balances;
   uint256 internal _totalSupply;
   mapping (address => mapping (address => uint256)) private _allowances;
   constructor () {
       owner = msg.sender;
       _totalSupply = 0;
       _name = "TokenName";
       _symbol = "TTS";
       _decimals = 0;
   }
   function balanceOf(address account) public view returns (uint256) {
       return _balances[account];
   }
   function totalSupply() public view returns (uint256) {
       return _totalSupply;
   }
   function transfer(address recipient, uint256 amount) public returns (bool) {
       _transfer(msg.sender, recipient, amount);
       return true;
   }
   function allowance(address owner, address spender) public view returns (uint256) {
       return _allowances[owner][spender];
   }
   function approve(address spender, uint256 amount) public returns (bool) {
       _approve(msg.sender, spender, amount);
       return true;
   }
   function transferFrom(address sender, address recipient, uint256 amount) public returns (bool) {
       _transfer(sender, recipient, amount);
       _approve(sender, msg.sender, _allowances[sender][msg.sender] - amount);
       return true;
   }
   function increaseAllowance(address spender, uint256 addedValue) public virtual returns (bool) {
       _approve(msg.sender, spender, _allowances[msg.sender][spender] + addedValue);
       return true;
   }
   function decreaseAllowance(address spender, uint256 subtractedValue) public virtual returns (bool) {
       _approve(msg.sender, spender, _allowances[msg.sender][spender] - subtractedValue);
       return true;
   }
   function _transfer(address from, address to, uint256 amount) internal virtual {
       require(from!= address(0), "ERC20: transfer from the zero address");
       require(to!= address(0), "ERC20: transfer to the zero address");
       _balances[from] = _balances[from].sub(amount, "ERC20: transfer amount exceeds balance");
       _balances[to] = _balances[to].add(amount);
       emit Transfer(from, to, amount);
