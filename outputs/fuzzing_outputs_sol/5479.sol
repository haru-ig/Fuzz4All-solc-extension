pragma solidity ^0.8.0;
contract mutateconstructorcall82
{
    constructor() public {}
    receive() payable external {}
    function mutate() public
    {
        address(this);
    }
}

pragma solidity ^0.8.0;
contract externalreceive82
{
    receive() external {}
}
