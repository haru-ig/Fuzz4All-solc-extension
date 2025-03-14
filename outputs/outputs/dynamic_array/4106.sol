pragma solidity ^0.8.0;
contract C {
    uint public c;
    uint private c_;
    uint public D;
    function f() public {
        c_ = 0;
    }
}
contract C2 {
    uint public c;
    uint c2_;
    uint public D;
    function f() public {
        if(c==c2_) {
            c=0;
        }
        else{
            c=c+1;
        }
    }
}



pragma solidity 0.8.0;



interface IDynamicArrayStorage {
    function initialize(uint256 length) external;
    function populate(uint256 idx_begin, uint256 idx_end, bytes memory data) external;
    function set(uint8 idx, bytes memory data) external;
    function unset_at(uint8 idx) external;
    function remove_at(uint8 idx) external;
}





pragma solidity ^0.8.3;


abstract contract ERC20MultiToken is IERC20 {
    using Address for address;

    mapping (address => uint256) private _balances;

    mapping (address => mapping (address => uint256)) private _allowances;

    uint256 private _totalSupply;


    function totalSupply() public view virtual returns (uint256) {
        return _totalSupply;
    }


    function balanceOf(address account) public view virtual returns (uint256) {
        return _balances[account];
    }


    function transfer(address
