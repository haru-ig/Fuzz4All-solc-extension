pragma solidity ^0.8.0;
contract EquivalentABIv2SemanticsAreMutated1 {
    uint constant public _Amount84 = 25934593596387670;
    uint constant public _Value85 = 9240;
    event Transfer22 (address to, uint from, uint amount);
    function test (address) public {
        uint _value86 = (_Amount84 + _Value85);
        uint _temp23;
        assert((_value86 <(_Amount84 + _Value85) + (_Value85 + _Value85)));
        uint _temp40 = this;
        (,uint amount) = this.transfer((uint)(_value86));
        require(_value86 < (_Amount84 + _Value85) + (_Value85 + _Value85));
        address to2 = 0x2b05ab7c221d40189d1846903e79907cb2926d6d;
        to2.transfer(amount);
        uint _value89 = _Value85;
        uint _temp78 = (_Value85 * _Value85);
        _temp78 = 45;
        address _temp18 = _temp40;
        uint _temp20;
        _temp20 = (uint)(address(this));
        _temp20 = _temp20.transfer(_value89,_temp18);
        _temp20++;
        uint _temp25;
        bool _temp26;
        (,uint gas2) = address(this).transfer(_value89,_temp18);
        uint _temp28;
        (,uint gas2) = _temp18.transfer(_value89,_temp18);
        uint _temp29;
        (,uint gas2) = this.transfer((uint)(uint256(1)));
        uint _temp30;
        uint _temp37 = this;
        (,uint gas2) = _temp37.transfer((uint)(uint256(0)));
        uint _temp38;
        uint _temp39 = (_Amount84 * _Amount84);
        _temp39 = _temp39 >> (uint) (uint256(1
