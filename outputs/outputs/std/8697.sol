pragma solidity ^0.8.0;
contract Example
{
    uint public x;
    uint constant value = 1000;
    function getter() public view returns (uint) {
        return 500;
    }
    function setter(uint _x) public {
        x += value; x *= 1000;
    }
}
address[] storage g = [address(0xC4836a882F13F7092cAeD4197C0C874d58Ca2784)];

pragma solidity ^0.8.0;
contract Example
{
    address public addr;
    constructor() public {
        addr = payable(msg.sender);
    }

    function example() public {
        addr.sendValue(address(this).balance);
    }
}
