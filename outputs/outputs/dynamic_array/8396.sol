pragma solidity ^0.8.0;
contract mutantSolidityB20070To2011000000 {
    function x() public pure returns (uint x) {
        return 0;
    }
}
contract mutantSolidityB20110To2015000000 {
    function x() public pure returns (uint x) {
        return 0;
    }
}
contract mutantSolidityB20150To2049000000 {
    function x() public pure returns (uint x) {
        return 0;
    }
}
contract mutantSolidityB20490To2051000000 {
    function x() public pure returns (uint x) {
        return 0;
    }
}
contract mutantSolidityB20500ToMax {
    function x() public pure returns (uint x) {
        for (uint i = 0; i < 1000; i++) {
            x += i;
        }
        return x;
    }
}
