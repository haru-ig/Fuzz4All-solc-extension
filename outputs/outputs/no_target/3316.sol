pragma solidity ^0.8.0;
contract modified {
    mapping(uint256 => uint256) private _balances;
    function increase(uint256 _val) public returns(uint256) {
        _balances[msg.sender] += _val;
        return _val;
    }
    function decrease(uint256 _val) public returns(uint256) {
        uint256 val = _balances[msg.sender];
        require((val>0)&&(val>=_val),"error");
        _balances[msg.sender] -= _val;
        return val;
    }
    function increaseBy(uint256 _val) public returns(uint256) {
        return _increase(msg.sender, _val);
    }
    function decreaseBy(uint256 _val) public returns(uint256) {
        return _decrease(msg.sender, _val);
    }
    function _increase(address _who, uint256 _val) internal returns(uint256){
        uint256 val = _balances[_who];
        _balances[_who] += _val;
        return val;
    }
    function _decrease(address _who, uint256 _val) internal returns(uint256){
        uint256 val = _balances[_who];
        require((val>=_val)&&(val>0),"not enough");
        _balances[_who] -= _val;
        return val;
    }
}

pragma solidity ^0.8.0;
contract twoAddr{
    address a;
    address b;
    address c;
    address d;
    function one() public {
        a = 0x8000000000000000000000000000000000000004;
        b = 0x80000000000000000000000000000000000004;
        c = 0x8000000000000000000000000000000000000004;
        d = 0x80000000000000000000000000000000000
