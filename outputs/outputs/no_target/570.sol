pragma solidity ^0.8.0;
interface IBaseInterface {
    function f() external returns (uint256 n);

    function g(uint256 z) returns (uint);
}
contract Base {
    mapping(address => uint256) private _balances;
    mapping(address => mapping(address => uint256)) private _allowed;

    function f() external {
        uint256 x = 0;
        IBaseInterface(address(this)).f();
        IBaseInterface(address(this)).f();
        x = IBaseInterface(address(this)).f();
    }

    function g(uint256 z) external view returns (uint) {
        uint256 y;
        IBaseInterface(address(this)).f();
        IBaseInterface(address(this)).f();
        y = IBaseInterface(address(this)).g(z);
    }

    function _transfer(address from, uint256 z) internal {
        _balances[from] = z;
    }

    function _transfer(address from, address to, uint256 z) internal {
        _balances[from] = z;
        _balances[to] = z;
    }

    function _allowed(address owner, address spender) public view returns (uint256) {
        return _allowed[owner][spender];
    }

    function _transfer(address from, uint256 z, bool isAllowed) internal {
        if (isAllowed) {
            _allowed(from, _msgSender()).approve(_msgSender(), z);
        }
        _transfer(from, z);
    }

    function _allow(address owner, address spender, uint z) internal {
        _allowed(owner, spender) = z;
    }
}
