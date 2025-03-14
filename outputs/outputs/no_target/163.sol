pragma solidity ^0.8.0;
contract Test {
    struct S {
        uint256 count;
        uint160 total;
        uint128 total2;
    }
    S public s;
    function set(uint count, uint160 total, uint128 total2) public {
        s.count = count;
        s.total = total; s.total2 = total2;
    }
    function get(uint count, uint160 total, uint128 total2) public {
        s.count = count;
        s.total = total; s.total2 = total2;
    }
}


function revert(string memory _msg) internal view { revert(_msg); }


function revert() internal view { revert(); }
