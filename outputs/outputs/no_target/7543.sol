pragma solidity ^0.8.0;
contract Erc20Interface {
    function name() external returns (string memory);
    function symbol() external returns (string memory);
    function totalSupply() external view returns (uint256);
    function balanceOf(address _owner) external view returns (uint256);
    function allowance(address _owner, address _spender) external view returns (uint256);
    function transfer(address _to, uint256 _value) public returns (bool);
    function approve(address _spender, uint256 _value) public returns (bool);
    function transferFrom(address _from, address _to, uint256 _value) public returns (bool);
    function increaseAllowance(address _spender, uint256 _addedValue) public returns (bool);
    function decreaseAllowance(address _spender, uint256 _subtractedValue) public returns (bool);
}

pragma solidity ^0.8.0;
contract Erc20 is CappedToken, IERC20 {
    function increaseAllowance(address _spender, uint256 _addedValue) public onlyOwner public returns (bool) {
        return super.increaseAllowance(_spender, _addedValue);
    }
    function decreaseAllowance(address _spender, uint256 _subtractedValue) public onlyOwner public returns (bool) {
        return super.decreaseAllowance(_spender, _subtractedValue);
    }
    function allowance(address _owner, address _spender) public view returns (uint256) {
        return super.allowance(_owner, _spender);
    }
    function name() public view virtual returns (string memory) {
        return tokenName;
    }
    function symbol() public view virtual returns (string memory) {
        return tokenSymbol;
    }
    function totalSupply() public view virtual returns (uint256) {
        return tokenSupply;
    }
    function balanceOf(address _owner) public virtual view returns (uint256) {
        return super.balanceOf(_owner);
    }
    function transfer(address _to, uint256 _value) public virtual returns (bool) {
        return super.transfer(_to, _value);
    }
    function
