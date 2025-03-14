pragma solidity ^0.8.0;
contract NumberMutatorsMutatedMutated {
    mapping (address => bool) public isFrozen;
    function () public payable{
        require(!isFrozen[msg.sender]);
        balances[msg.sender] += 5;
        }
    function freeze(uint256 i) public {
        require(balances[msg.sender] >= i);
        isFrozen[msg.sender] = true;
     }
    function unfreeze(uint256 i) public {
        require(isFrozen[msg.sender] && balances[msg.sender] >= i);
        isFrozen[msg.sender] = false;
    }
    function balanceOf() public view returns (uint256 balance) {
        return balances[msg.sender];
     }
    function balanceOfMutated() public view returns (uint256 balance) {
        return 5;
     }
    function transfer(address _to, uint _value) public returns(bool success) {
        if (msg.sender!= _to) {
            return false;
        }
        balances[msg.sender] -= _value;
        balances[_to] += _value;
        return true;
     }
    function transferFrom(address _from, address _to, uint _value) public returns (bool success) {
        if (msg.sender!= _from) {
            return false;
        }
        require(balances[_from] >= _value);
        balances[_from] -= _value;
        balances[_to] += _value;
        return true;
     }
    function approve(address _spender, uint _value) public returns (bool success) {
        if (_value!= 0 && balances[msg.sender]!= 0) {
            balances[msg.sender] -= _value;
        }
        approve[msg.sender][_spender] = _value;
        return true;
     }
    function increaseAllowance(address _spender, uint _addedValue) public returns (bool success) {
        approve[msg.sender][_spender] = msg.sender.allowance().add(_addedValue);
        return true;
     }
    function decreaseAllowance(address _spender, uint _subtractedValue) public returns (bool success) {
        approve[msg.sender][_spender] = msg.sender.allowance().sub(_subtractedValue);
        return true;
     }
    function totalSupply() public view returns (uint256) {
        return totalSupply_;
     }
    uint256 public constant _INITIAL_SUPPLY = 100;
}
