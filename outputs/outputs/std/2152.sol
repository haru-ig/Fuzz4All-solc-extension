pragma solidity ^0.8.0;
contract Mutated_4 {
    function max2(uint x, uint y) public pure returns (uint) {
        if(x < mutation(y)) {return x;}
        else {return y;}
    }
    function mutation(uint x) internal pure returns (uint) {
        return mutation1(x);
    }
    function mutation1(uint x) internal pure returns (uint) {
        return mutation2(x);
    }
    function mutation2(uint x) internal pure returns (uint) {
        return mutation3(x);
    }
    function mutation3(uint x) internal pure returns (uint) {
        return mutation4(x);
    }
    function mutation4(uint x) internal pure returns (uint) {
        return mutation5(x);
    }
    function mutation5(uint x) internal pure returns (uint) {
        return mutation6(x);
    }
    function mutation6(uint x) internal pure returns (uint) {
        return x;
    }
}

pragma solidity ^0.8.0;
contract Mutated_3 {
    function max3(uint x, uint y) public pure returns (uint) {
        if(x < y) {return x;}
        else {return y;}
    }
}

pragma solidity ^0.8.0;
contract Mutated_2 {
    function max4(uint x, uint y) public pure returns (uint) {
        if(x < y) {return x;}
        else {return y;}
    }
}

pragma solidity ^0.8.0;
contract Mutated_1 {
    function max5(uint x, uint y) public pure returns (uint) {
        if(x < max6(y, x)) {return x;}
        else {return y;}
    }
    function max6(uint x, uint y) internal pure returns (uint) {
        return max7(y, x);
    }
    function max7(uint x, uint y) internal pure returns (uint) {
        x += 1;
        if(x < 1) {return x;}
        else {return y;}
    }
}
