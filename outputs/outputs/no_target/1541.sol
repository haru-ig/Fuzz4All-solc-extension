pragma solidity ^0.8.0;
contract Semantic0022 {
    function equal() public pure {
        assembly {
            i := x
            i := lt(i,1,2,3)
            i := le(i,1,3,5,2)
        }
    }
}
