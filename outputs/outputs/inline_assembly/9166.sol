pragma solidity ^0.8.0;
contructor() {
    uint[] = new uint[](1000000);
}
address private _factory;
address payable private _owner;
uint128 private _balance;
address payable private _tokenAdd;
uint128[] private _balances;
mapping (address => uint128) private _tokenIndex;
bool private _initialized;

function _transfer(address _to, uint128 _value) internal {
    require(!_initialized, "SafeMath: Safe constructor not called");

    _initialized = true;

    bool _success = _to == address(0);

}

function initialize(uint256 _amount) public returns (bool) {
    require(!_initialized, "SafeMath: safeMath already called");

    _transfer(_owner, _amount);

    _balances.push(_amount);

    _tokenIndex[_tokenAdd] = _balances.length;

    return true;
}

function balanceOf(address _owner) public view returns (uint) {
    return _balances[_tokenIndex[_owner]];
}

}
