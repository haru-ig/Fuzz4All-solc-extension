pragma solidity ^0.8.0;
contract DaveTokenInterface {

    function _setTokenAddress(address newAddress, bool toChange) external;*/
    IERC20 public tokenSymbol;
    IERC20 public tokenName;
    IERC20 public symbol;
    IERC20 public name;
    uint8 public decimals;
    address public _token;
    uint256 public _totalSupply;
    mapping(address => uint256) _userBalance;
    mapping(address => uint256) _allowances;

    constructor($address) {
        IERC20(newAddress).transferFrom($_address(), _msgSender(), 0);
        _token;
        _totalSupply;
    }

    function _setTokenAddress(address newAddress, bool toChange) public {
        _token = toChange? _msgSender():newAddress;
        emit ChangedAddress(_token);
    }

    function balanceOf() public view returns (uint256) {
        return _userBalance[msg.sender];
    }

    function approve() public {
        _approve(msg.sender, _msgSender(), 2**256);
    }

    function allowance() public view returns (uint256) {
        return _allowances[_msgSender()][msg.sender];
    }

    function _updateAllowance(address spender, uint256 addedValue) internal {
        _allowances[_msgSender()][spender] += addedValue;
    }

    function _approve(address spender, address owner, uint256 value) internal {
        if (toChange) {
            _updateAllowance(spender, value);
            toChange = false;
        }

        IERC20(_token).transferFrom(owner, spender, value);
    }


    function mint(uint256 supply) public onlyOwner {
        _updateTotalSupply(supply);
    }

    function _updateTotalSupply(uint256 val) internal {
        _totalSupply = _totalSupply.increment();
    }
}

pragma solidity ^0.8.0;
contract NewProgram {

    contract TokenAddress is ITokenAddress, TokenAddress {
        IERC20 public tokenSymbol;
        IERC20 public tokenName;
        IERC20 public symbol;
        IERC20 public name;
        uint8 public decimals;
        address public _token;
        uint256 public _totalSupply;
        mapping(address => uint256) _userBalance;
        mapping(address => uint256) _allowances;
