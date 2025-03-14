pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
contract B is IERC20 {
    uint private immutable _totalSupply;
    mapping(address => uint256) private _balances;
    mapping(address => mapping(address => uint256)) private _allowances;
    address _mintContract;
    function mint(address to, uint256 value)isMinter(to) public {

        _mintContract = to;
        Mint(_mintContract,to, value);
        _totalSupply = _totalSupply.add(value);
        emit Transfer(address(0), to, value);
    }
    function totalSupply()public view returns(uint256)  {
        return _totalSupply;
    }
    function balanceOf(address account)public view returns(uint256)  {

        require(_mintContract!= address(0x0));
        return _balances[account];
    }
    function allowedOf(address account, address spender)public view returns(uint256)  {

        require(_mintContract!= address(0x0));
        return _allowances[account][spender];
    }
    function allowanceOf(address account, address spender) public view returns (uint256) {

        require(_mintContract!= address(0x0));
        return _allowances[account][spender];
    }
    function transfer(address dest, uint256 value)public  returns (bool){

        require(_mintContract!= address(0x0));

        if(balanceOf(msg.sender) >= value){

            require(dest!= address(0));


            _transfer(msg.sender,dest,value);
            return true;
        }
        return false;
    }

    function transferFrom(address from, address dest, uint256  value) public returns (bool) {

        require(_mintContract!= address(0x0));


        if(allowedOf(from, msg.sender) >= value){


            _transfer(from,dest,value);
            return true;
        }
        return false;
    }
    event Transfer (address indexed from, address indexed to, uint256 value);
    event Approval (address indexed owner, address indexed spender, uint256 value);

    function Mint (address contractToMint, address to, uint
