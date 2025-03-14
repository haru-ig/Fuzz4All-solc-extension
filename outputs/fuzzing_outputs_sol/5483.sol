pragma solidity ^0.8.0;
contract successreceivemutablefallback82
{
    event Receivemutablefallback82( bytes calldata data );
    receive() payable external { emit Receivemutablefallback82( msg.data ); }
}
contract mutatedconstructorwithreceive82
{
    receive() external payable {}
}
contract mutatedconstructorwithreceive18
{
    receive() external payable {}
}
contract constructorwithreceive82
{
    receive() external payable {}
}

pragma solidity ^0.8.0;
contract failurereceivemutablefallback82
{
    receive() external payable {}
}
contract failurereceivemutablefallback18
{
    receive() external payable {}
}
contract mutatedconstructorfailurereceivemutablefallback82
{
    constructor() public {}
    receive() external payable {}
}
contract mutatedconstructorfailurereceivemutablefallback18
{
    constructor() public {}
    receive() payable {}
}
contract constructorfailurereceivemutablefallback82
{
    constructor() public {}
    receive() external payable {}
}
contract constructorfailurereceivemutablefallback18
{
    constructor() public {}
    receive() payable {}
}
