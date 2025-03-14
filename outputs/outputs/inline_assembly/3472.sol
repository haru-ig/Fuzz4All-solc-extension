pragma solidity ^0.8.0;
contract ChangeMutagenMod3 {
    modifier onlyFirstTime () {
        require(balanceOf(msg.sender) > ZERO);
        _;
    }
    modifier onlyThirdTime(address _sender)  {
        require(balanceOf(_sender) > ZERO);
        _;
    }
    modifier onlyFourthTime() {
        require((msg.value >= ONE));
        _;
    }
    modifier onlyFiveTime(uint _value) {
        assert(_value > ZERO);
        _;
    }
    function change3 (uint256 _value)  public onlyFirstTime() payable  {
        _value = ZERO;
        _value = ONE;
        _value = TWO;
        _value = THREE;
        _value = ONE;
        _value = ONE;
        _value = ONE;
        _value = ONE;
        _value = ONE;
    }
    function balanceOf(address _owner) public view returns (uint256) {
        return uint256(balances[_owner]);
    }
}
