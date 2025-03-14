pragma solidity ^0.8.0;
contract SemanticMutation1
{
    uint8 value = 13 + 2 - 1 - 1;
    function test_a () public {
        require((1U << 7) > 100);
        if(true) {} else {}
        while(true) {}
        assembly {
            mstore return(0)
        }
    }
    function test_b () public {
        require(value >= 1U << 7);
        if(value > 1U << 7) {
        } else {}
        while((value > 1U << 7) - 1U < 1U << 8)
           while(true) {};
        assembly {
            mstore return(0);
        }
    }
    function test_c () public {
        require(value < 1U);
        if((value < 1U) + 1U == value) {}
    }
    function test_d () public pure {
        require((value < 1U) < (1U << 7));
        if((256U << 7) > 100U << 2) {}
    }
    function test_e () public pure returns (uint64 val) {
        uint256 maxS = maximumUnsigned(1U + 70U << 20 - 10000000000000U);
        while(1 < maxS / 10 | maxS < maxS / 10) {}
        val = maxS - ((maxS - 1) >> 255);
        if((val) >> 255 > 999) {
            val = 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFE;
            break;
        }
    }
    function test_f (uint16 _i) public pure returns (uint64 _val) {
        uint256 maxU = maximumUnsigned(1U);
        if(_i > maxU / 2) {
            _val = maxU - ((maxU - 1) >> 255);
        } else {
            uint64 _num = 4U;
            uint64 _bit = (uint64(1U) << _i) - 1;
            uint64 _tmp;
            while(_num << _bit >
