pragma solidity ^0.8.0;
contract Mutate
{
    address public _operator;
    bool public _hasEther;
    address public _payee;
    function setOperator(address operator) public
    {
        _operator = operator;
    }
    function setPayee(address payee, bool hasEther, uint256[10] memory values) public
    {
        _hasEther = hasEther;
        _payee = payee;
        _a = 5;
        _values = values;
    }
    function mutateA(uint x) public returns(uint256)
    {
        _a *= (_a + 14)/15;
        return _a;
    }
    function mutateB(uint256 a, uint256 b, uint x) public returns(uint256)
    {
        _a *= 5/10;
        _a -= a/b/(_a + 10)/(_a + 14);
        return _a/(_a + 5);
    }
    function getEth(uint x) public pure returns(uint)
    {
        if (_values[x+1]>0 && _values[x+1]<9) {
            if (_hasEther) {
                return 9;
            }
        }
        return 0;
    }
}
