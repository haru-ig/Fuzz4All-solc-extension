pragma solidity ^0.8.0;
contract M9{
    uint private value;
    constructor () public {
        value = 3;
    }
    function func() public view returns (uint) {
        return value;
    }

    function setter() public {
        require(msg.sender==x,_);
        x[y] = z;
    }
}
contract M8{
    bytes32 public y;
    constructor ()  public { }
    function func() public returns (uint) {
        x[y] = uint(1);
        return x[y];
    }
}
