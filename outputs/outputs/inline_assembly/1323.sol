pragma solidity ^0.8.0;
contract Mutant7
{
    contract C2 { }
    receive() external payable {}
    function f() public payable {
        (, uint8 b) = C2().f();
    }
}

pragma solidity ^0.8.0;
contract Mutant8
{
    uint8 private a;
    uint8 public b;
    function f() public pure returns (uint8 x, uint8 y) {
        x = 17+111;
        y = b;
        a = 111;
        return (x,y);
    }
}

pragma solidity ^0.8.0;
contract Mutant9
{
    function f() public pure returns (uint8) {
        return 123;
    }
}
