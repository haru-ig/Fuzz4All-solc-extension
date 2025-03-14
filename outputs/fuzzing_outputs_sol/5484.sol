pragma solidity ^0.8.0;
contract failure
{
    constructor() public {}
}
contract mutatedconstructorcall1
{
    function() public {}
    constructor() public {}
}
contract mutatedconstructorcall28
{
    constructor() public {}
    receive() external {}
}
contract mutatedconstructorcall3
{
    constructor() public {}
    receive() external payable {}
}
contract mutatedconstructorcall4
{
    constructor() public {}
    receive() public {}
}
contract mutatedconstructorcall5
{
    constructor() public {}
}
contract mutatedconstructorcall6
{
    constructor() public {}
    receive() public {}
}
contract mutatedconstructorcall7
{
    constructor() public {}
    receive() payable external {}
}
contract mutatedconstructorcall8
{
    constructor() public {}
    receive() public {}
}
contract mutatedconstructorcall9
{
    bytes s;
    constructor() public constructorcall9("mutatedconstructorcall", "mutatedconstructorcall", 32, 32) {}
}
contract constructorcall9
{
    bytes payable s;
    constructor(string memory _s1, string memory _s2, uint _u1, uint _u2) public
        constructorcall82()
    {
        s = stringToBytes(_s1, _u1);
    }
    constructor(string memory _s1, string memory _s2, uint _u1) public
        constructorcall82()
    {
        s = stringToBytes(_s1, _u1);
    }
}
