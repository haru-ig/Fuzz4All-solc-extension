pragma solidity ^0.8.0;
contract Example {
    uint x;
    uint y;
    uint z;
    function simple(uint _x) public {
        uint _tmp;
        uint _y;
        uint _z;
        if ( z > _x) revert("Invalid input");
        _z = _tmp;
        uint _y = _tmp + x;
        _y = _y - z;
        x = _x - _z;
        y = _y;
    }
}


interface IERC165 {

    function supportsInterface(bytes4 interfaceId) external view returns (bool) {}
}


abstract contract ERC20 {

    mapping (address => uint256) private _balances;


    mapping (address => mapping (address => uint256)) private _allowances;

    uint256 private _totalSupply;

    /**
     * @dev See {ERC20-_totalSupply}.
