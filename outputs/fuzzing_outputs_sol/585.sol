pragma solidity ^0.8.0;
contract Test
{
    function test(address h) public payable {}
    function f (address h) public payable {}
    function modified(address h, bytes memory b) public
    {
        test(h);
        f(h);
    }
}


pragma solidity ^0.8.0;
contract CallTest
{
    uint256 public value;
    constructor()
    {
        value = 9;
    }
    function mod (uint256 v) public view returns (uint256)
    {
        return v % 2;
    }
    receive() external payable
    {

        uint256 balance = msg.value;
        uint256 c = mod(balance);
        uint256 v = c > 0? balance - c : c;
        uint256 s = mod(v);
        value -= s;
    }
}
