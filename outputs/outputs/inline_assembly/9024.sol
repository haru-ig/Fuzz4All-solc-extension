pragma solidity ^0.8.0;
contract MutatedSolidity6
{
    struct X
    {
        uint256 x;
    }
    constructor() public
    {
        X memory _a = X(2);
        X memory result=X(6);
        X memory b = X(4);
    }
    function add() public pure returns(X memory)
    {
        return _a;
    }
    function mul() public pure returns(X memory)
    {
        return X(0);
    }
    function sub() public pure returns(X memory)
    {
        return X(1);
    }
}


pragma solidity ^0.8.0;
contract MutatedSolidity7
{
    struct Y
    {
        uint256 y;
    }
    struct X{
        uint256 x;
    }
    X _x;
    Y _y;
    uint256 _z;
    constructor() public
    {
        _y = Y(1);
        _x = X(0);
        _z = 1;
    }
    modifier onlyOne(){
        require(_z == 1);
        _;
    }
    function get() public view returns(X memory){
        return _x;
    }
    function setWithMultipleCalls(X memory _y) public onlyOne{
        _x = _y;
    }
    function setWithoutOneModification(X memory _x) public onlyOne{
        _x = _x;
    }
    function getX() public view returns(X memory)
    {	return _x;	}
}

pragma solidity ^0.8.0;
contract MutatedSolidity8
{
    struct Y
    {
        uint256 y;
