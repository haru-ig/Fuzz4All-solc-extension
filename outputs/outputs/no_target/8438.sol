pragma solidity ^0.8.0;
contract UnsafeB {
    mapping (address => balance) public balances;
    string greeting = "Hello, World!";
    constructor () public {
        balances[msg.sender] = balance(msg.sender); }
    function set (address _caller, address addr, balance _balance) public {
        balances[_caller] = _balance; }
    function _transfer (address _caller, address to, balance _transfer) private returns (bool) {
        balances[_caller] -= _transfer;
        balances[to] += _transfer;
        emit Transfer(_caller, to, _transfer);
        return true; }
    function () public payable { }
    function _mint (address _caller) private {
        try { balance(_ caller ); } catch (Error) { throw; }
        balances[_caller] += msg.value; }
    function _burn (address _caller, uint256 amount) private returns (bool) {
        require (balances[_caller] >= amount, "Burn amount exceeded");
        balances[_caller] -= amount;
        emit Transfer(_caller, address(0), amount);
        return true; }
    function _mintMany (address _caller, uint256 amount) private returns (bool) {
        balances[_caller].increase(amount);
        _mint(_caller, amount); }
}
