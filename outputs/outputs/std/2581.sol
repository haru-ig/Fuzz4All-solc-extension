pragma solidity ^0.8.0;
interface IERC20{
    event Transfer(address indexed _from, address indexed _to, uint _value);
    event Approval(address indexed _owner, address indexed _spender, uint _value);
}

pragma solidity ^0.8.0;
contract ERC20Tests is IERC20{
    uint256 public _totalSupply;
    mapping(address => uint256) private _balances;
    mapping(address => mapping(address => uint256)) private _allowances;
    bytes32 public constant _name = 'ERC20';
    bytes32 private constant _symbol = 'TEST';
    uint8 public constant _decimals = 4;
    uint256 public constant INITIAL_SUPPLY = 2000;
    address public owner;
    address public defaultOwner;
    address[] public participants;

    function setOwner(address owner_) public {
        owner = owner_;
    }

    function setDefaultOwner(address defaultOwner_) public {
        defaultOwner = defaultOwner_;
    }

    modifier onlyOwner(){
        require(msg.sender == owner);
        _;
    }

    constructor() public {
        owner = msg.sender;
        _totalSupply = INITIAL_SUPPLY;
        participants.push(owner);
    }

    function totalSupply() public view returns (uint256){
        return _totalSupply;
    }

    function balanceOf(address user) public view returns (uint256){
        return _balances[user];
    }

    function approve(address spender, uint wad) public virtual override returns (bool){
        require(spender!= address(0));
        _allowances[msg.sender][spender] = wad;
        emit Approval(msg.sender, spender, wad);
        return true;
    }

    function transfer(address recipient, uint wad) public virtual override returns (bool){
        _transfer(message.sender, recipient, wad);
        return true;
    }

    function transferFrom(address sender, address recipient, uint wad) public virtual override returns (bool){
        (bool success, ) = sender.call{value:wad}("");
        require(success);
        _approve(message.sender, sender, wad);
        _transfer(sender, recipient, wad);
        return true;
    }

    function _transfer(address from, address to, uint wad) internal {
        _balances[from] = _balances[from].sub(wad, "transfer amount exceeds balance");
        _balances[to] = _balances[to].add(wad);
        emit Transfer(from, to, wad);
    }

    function _approve(address owner_, address spender_, uint wad_) internal {
        _allowances[owner_][spender_]
