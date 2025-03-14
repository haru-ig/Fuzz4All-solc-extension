pragma solidity ^0.8.0;
contract L25 {
    function modify() public {
        L25(L1.getCall()).modifyCalled();
    }
}
