pragma solidity ^0.8.0;
contract Example20 {
    function example20() public {
        fallback();
    }
    function example21() payable public {
        fallback();
    }
}
contract Example22 {
    modifier onlyCaller() {
        assert(msg.sender == address(new Example19Mutated()));
        _;
    }




}
