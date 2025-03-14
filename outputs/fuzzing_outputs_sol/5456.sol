pragma solidity ^0.8.0;
contract successmutablecall7 {
    function() public payable {}
}
contract callmutatedcall7 {
    function() external pure returns (uint256) { return 2; }
}
contract constructorcallmutated7 {
    constructor() public {}
    function() public pure returns (uint256) { return 2; }
}

pragma solidity 0.8.0;
contract test
{
    function getResult(bool x) public pure returns (bool) {
        return x;
    }
}
contract modifiertest
{
    function f() public pure returns (uint256) { return 2; }
}
contract contracttest
{
    constructor() public {}
    function getResult(bool x) public pure returns (bool) {
        return x;
    }
    function modifiertestf() public pure returns (uint256) { return 2; }
}
contract testmodifier
{
    uint256 n;
    function x(uint i) public pure returns (uint256) {
        return i;
    }
    constructor(uint256 _n) public {
        n = _n;
    }
    function test() public {
        require(n == x(21));
        require(n == f());
        require(n == g(2));
        require(n == g(21));
        require(n == getResult(true), "contracttest1");
        require(n == getResult(true));
        require(n == modifiertestf(), "modifiertest");
    }
}
contract testconstructor
{
    uint256 n;
    constructor(uint256 _n) public {
        n = _n;
    }
    function test() public {
        require(n == constructorcall7().test(), "constructorcall7");
        require(n == test());
        for (uint256 i = 0; i < 3; i++) {
            require(n == getResult(i));
        }
        require(n == constructorcallmutated7().test(), "constructorcall7");
        require(n == test()  , "test() -- no payable");
        require(n == modifiertestf()  , "modifiertest");
        require(n == test()    , "test() -- no payable");
        require(n == getResult(true), "contracttest1");
        require(n == getResult(true));
        require(n == modifiertestf()  , "modifiertest");
    }
}















pragma solidity ^0.8.0;
contract fallback1
{
}
contract fallback2
{
