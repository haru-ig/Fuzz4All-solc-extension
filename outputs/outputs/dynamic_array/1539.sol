pragma solidity ^0.8.0;
contract DYNA {
    function f(){
        uint[5] i;
    }
}

pragma solidity ^0.8.6;
contract LOOPS {
    uint256[25] i;
    function f25() public returns (uint) {
        for (uint x = 0; x < 25; ++x) {
            i[0];
        }
    }
    function f(uint x) public {
        i[x];
        if(x > 20) {
            i[21];
        }
    }
}
