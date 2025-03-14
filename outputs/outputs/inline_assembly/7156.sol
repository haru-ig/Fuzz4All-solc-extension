pragma solidity ^0.8.0;
contract OptimizelyExample108 {
    uint internal value = 1 << 30;
    function get() returns(uint){
        value >>= 2;
        value <<= 1;
        value &= 1;
        value ^= 1;
        return value;
    }
}

pragma solidity ^0.8.0;
contract OptimizelyExample109 {
    uint internal value = 1 << 30;
    function revert() pure virtual returns(uint){
        return value;
    }
}

pragma solidity ^0.8.0;
contract OptimizelyExample110 {
    uint internal value = 1 << 30;
    function revert() pure virtual returns(uint){
        value <<= 1;
        return value;
    }
}

pragma solidity ^0.8.0;
contract OptimizelyExample111 {
    uint internal value = 1 << 30;
    function revert() pure virtual returns(uint8){
        uint r = value >> 2;
        value >>= 1;
        return r;
    }
}

contract inlineAsmBadExample {
    uint public i;
    bytes32 keeparg;

    function log(bytes32 _b, bytes32 _keeparg) public {
        uint x;
        x = log(_b);
        value &= ~uint8(0);
        i = x;
        keeparg = _keeparg;
    }

    function revert() pure virtual returns(uint) {
        if(keeparg!= value) revert();
        return x;
    }
}
"
