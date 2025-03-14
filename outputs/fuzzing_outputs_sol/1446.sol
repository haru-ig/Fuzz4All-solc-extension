pragma solidity ^0.8.0;
contract SemanticallyUnequivalentExample {
    function sematicalEquivalentFallback() public pure {



        require(msg.data.length > 0);
    }
}

pragma solidity ^0.8.0;
contract ComplexTest{
    function complex() public pure {
        address addr = msg.sender;
        addr.transfer(10);
    }
}

contract UseFallback{
    SemanticallyEquivalentExample sematicalEquivalentExample;
    SemanticallyUnequivalentExample sematicalUnequivalentExample;
    ComplexTest complex;

    function useFallback() public returns (uint){
        uint val = msg.value;
        uint gas = msg.gas;
        sematicalEquivalentExample.sematicalEquivalentFallback();
        sematicalEquivalentExample.sematicalEquivalentFallback.transfer(val);
        sematicalUnequivalentExample.sematicalEquivalentFallback();
        sematicalUnequivalentExample.sematicalFallback();
        complex.complex();
    }
}



function noPayableFallback() public pure { }


function fallback() public pure {
    throw;
}
