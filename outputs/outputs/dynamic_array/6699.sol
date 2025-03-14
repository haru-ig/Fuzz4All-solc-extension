pragma solidity ^0.8.0;



contract T8FA_mutator_10{
    fallbackFallback external payable {}
    constructor () {}


    function fallbackFallback () external payable {}


    function externalFallback () public pure virtual {}
}

contract A_mutator_7 {

    function aFallback () external pure virtual {}

    function aPayable () public payable {}

    function nonVirtualFallback () public pure virtual {}
}
contract B_mutator_8 {

    function bFallback () external pure virtual {}

    function bPayable () public payable {}

    function nonVirtualFallback () public pure virtual {}
}
contract C_mutator_9 {

    function cFallback () external pure virtual {}

    function bPayable () public payable {}

    function nonVirtualFallback () public pure virtual {}
}
contract C_mutator_10 {

    function cFallback () external pure virtual {}

    function bPayable () public payable {}

    function nonVirtualFallback () public nonvirtual virtual {}
}
contract C_mutator_11 {

    function cFallback () external pure virtual {}

    function bPayable () public payable {}

    function nonVirtualFallback () public virtual nonvirtual {}
}
contract C_mutator_12 {

    function cFallback () external pure virtual {}

    function bPayable () public payable {}

    function nonVirtualFallback () public virtual virtualnonvirtual {}
}
