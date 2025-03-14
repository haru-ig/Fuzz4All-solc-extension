pragma solidity ^0.8.0;
contract simplemut
{
    constructor() public
    {



        simplefallback2().fallback();



        simplefallback2().mutablefallback();



        simplefallback2().receivefallback();
    }
}


pragma solidity ^0.8.0;
contract simplefallback3
{
    function mutablefallback() public pure {}
    receive () public pure {}
}
contract mut
{
    constructor() public
    {



        simplefallback3().fallback();



        simplefallback3().mutablefallback();


        simplefallback3().receivefallback();
    }
}
contract call
{
    constructor() public
    {


        mut().mutablefallback();
    }
}
