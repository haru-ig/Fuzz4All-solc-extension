pragma solidity ^0.8.0;
contract NotSureHowContract {
    function xTo(uint i) public pure returns(uint) {
        if (i == 2) return 3;
        if (i == 9) return 12;
        if (i == 14) return 12;
        if (i == 18) return 12;
        if (i == 21) return 12;
        return 5;
    }
}
