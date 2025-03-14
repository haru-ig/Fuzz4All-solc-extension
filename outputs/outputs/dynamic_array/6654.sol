pragma solidity ^0.8.0;
contract T8FA_mutator_1 {
    address addr1;
    function g() view public {
        address addr2;
        addr1 = addr2;
    }
    function h() view public {
        addr1;
    }
}
