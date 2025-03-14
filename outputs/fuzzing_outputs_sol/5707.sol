pragma solidity ^0.8.0;
contract semanticallyequivalent7
{
    uint public z;
    function test()public {
        z = x;
        y = x + (x & y) + (y - (x * z)) / z;
    }
}
pragma solidity ^0.8.0;

interface IERC20
{

    function totalSupply()
        external
        view
        returns (uint256);


    function transfer(address _to, uint256 _amount) external returns (bool);
}
pragma solidity ^0.8.0;

contract FallbackInterface
{
    uint public x;
    function setX(uint _x) public {
        x = _x;
    }
}
pragma solidity ^0.8.0;

contract IERC642
{

    function fallback(bytes[] memory) public returns (uint);
    function setX(uint _x) public;
}
pragma solidity ^0.8.0;

contract Caller
{

    function sayHi() public pure {
        bytes memory data = abi.encode("This message came from a contract", "");
        (uint x) = IERC642(address(semanticallyequivalent7)).fallback(data);
        return;
    }

}
