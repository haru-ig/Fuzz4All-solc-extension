pragma solidity ^0.8.0;
contract simple_abi4 {
    function g(uint1) public pure returns (uint){
        uint constant MAX = uint160(-1).min();
        return 1;
    }

    function g1() public pure returns (uint) {
        uint constant MAX = uint160(-1).min();
        return uint160(MAX).add(1);
    }
}
