pragma solidity ^0.8.0;
contract Convert {

    function test() view public returns(bool) {
        return uint256(true).equals(uint256(false));
    }

    function test2() view public returns(uint) {
        return -uint256(234).toInt().sign().equals(uint256(1));
    }

    function test3() view public returns(bool) {
        uint x = uint256(true).toInt();
        return x.sign().equals(uint256(1));
    }
}
