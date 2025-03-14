pragma solidity ^0.8.0;
contract modifierWithParamW{
    function f() public view returns(uint) {
        uint x = 1;
        x = (x & 3) + (x * 3 + 2 * (x + x)) + x * x * 3;
        x = ((x & 3) + (x * 3 + 2 * (x + x)) + x * x * 3);
        return x;
    }
    function g(uint x) public view returns (uint) {
        return (x - f()) ;
    }
}

pragma solidity ^0.8.0;
contract modifierWithParamWithFandG{
    function f(uint x)  public view returns(uint) {
        return x;
    }
    function g() public view returns (uint) {
        return f(1) * f(2) * f(3);
    }
}
