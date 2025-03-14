pragma solidity ^0.8.0;
contract failuremutablefallback82
{
    receive() external {}
}
contract failureconstructorcall82
{
    constructor() public {}
    receive() external {}
}
contract mutatedconstructorcallsuccessful83
{
    constructor() public {}
    receive() payable external {}
}
contract mutatedconstructorconstructorcall83
{
    constructor() public {}
    receive() external {}
}
contract mutatedmethodcall83
{
    function foo() public {
        receive() payable external {}
    }
}
contract mutatedfunctioncall83
{
    function foo() public payable {
        receive() external {}
    }
}
contract mutatedfunctioncallsuccessful83
{
    function foo() public payable {
        receive() external {}
    }
}
contract mutatedstaticcall83
{
    static function bar() public {
        receive() payable external {}
    }
}
contract mutatedconstructorcallindirect83
{
    constructor() public {}
    receive() external {}
}
contract mutatedconstructorcallindirectsuccessfull83
{
    constructor() public {}
    receive() external {}
}
contract mutatedconstructorconstructorcallindirect83
{
    constructor() public {}
    receive() external {}
}
contract mutatedconstructorconstructorcallindirectsuccessfull83
{
    constructor() public {}
    receive() external {}
}
contract mutatedconstructorcallindirectwithreceivererror83
{
    constructor() public {}
    receive() external {}
}
contract mutatedconstructorconstructorcallindirectwithreceivererrorsuccessfull83
{
    constructor() public {}
    receive() external {}
}
contract mutatedconstructorcallindirectwithreceivererrorsuccessfullonlast83
{
    constructor() public {}
    receive() external {}
}


pragma solidity ^0.8.0;
contract Caller83
{
    constructor() public { }

    receive() payable external {}

    receive() external {}
}
