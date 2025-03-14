pragma solidity ^0.8.0;
contract Example
{
    uint x;
    function setter(uint _x) public {
        require(_x!= x);
        x = 100;
    }
}
pragma solidity ^0.8.0;
contract Example
{
    uint x;
    function setter(uint _x) public {
        require(_x == x);
        x = 100;
    }
}
