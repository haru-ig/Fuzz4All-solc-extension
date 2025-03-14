pragma solidity ^0.8.0;
contract semanticallyequivalent1
{
    function f(uint r) public pure {
        return;
    }
}

pragma solidity ^0.8.0;
contract semanticallyequivalent2
{
    function f(bytes memory a) public pure {
        return;
    }
}
contract Caller
{
string dummy;

function fallback() public payable {}

function simpleContractCall(uint rval) public pure {
        if (true) {} else {
                Caller.fallback();
        }
        call(rval);
}


function call(uint r) public pure {
        Caller.simpleContractCall(r);
}
}
