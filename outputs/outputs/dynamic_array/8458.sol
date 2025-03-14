pragma solidity ^0.8.0;
contract mutantSolidity1619122741 {
    uint public a1 = 68226996325;
    uint public b1 = 6989360712792645;
    uint public c1 = 6989360712792646;
    uint public d1 = 6989360712792646;
    function increment() public pure returns(uint) {
        b1 = uint128(c1)/uint128(3) + uint128(b1);
        return a1+b1/(uint128(100)) - setOverflow(c1);
    }
    function changeA1() internal pure returns (uint) {
        return 1619122741;
    }
    function changeC1() internal pure returns (uint) {
        return 1619122742;
    }
    function changeD1() internal pure returns (uint) {
        return 1619122743;
    }
    function setOverflow(uint128 x) internal pure returns(uint) {
        if (x > 0x7FFFFFFF || x < 0) {
            return 2**256 - 1;
        } else {
            return x;
        }
    }
}

contract emptyContract {
    function f() public pure {}
}
