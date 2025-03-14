pragma solidity ^0.8.0;
contract Contract11Mut {
    event Fulfilled(address owner, uint256 indexed value);
    uint256 public num;
    constructor(uint256 value) {
    }
    fallback() external payable {
        num = 1;
    }
}

pragma solidity ^0.8.0;
contract Contract11 {
    uint _c1 = 1;
    uint _c2 = 2;
    void call(uint x) {
        uint __temp = x + _c1;
        uint __call_temp = _call(x);
        switch (__temp) {
            case 42: {
                _c1 = 41;
                uint __temp2 = _c2;
                break;
            }
            case 43: {
                _c1 = 42;
                uint __temp2 = _c2 + _c1;
                break;
            }
            default: {
                _c2 = __call_temp;
                uint __temp2 = _c2 + _c1;
            }
        }
    }
    uint _check(uint x) private pure {
        uint __temp3 = x;
        x = uint(-1);
        x = uint(-2);
        x = uint(uint(-3));
        x = uint(uint(-4));
        x = uint(uint(-5));
        x = uint(uint(-6));
        x = uint(uint(-7));
        x = uint(uint(-8));
        x = uint(uint(-9));
        x = uint(uint(-10));
        x = uint(uint(-11));
        x = uint(uint(-12));
        if (uint(uint(-128))) < 0xffffffffffffffff == (uint(uint(-128)))) {
            x = uint(uint(uint(-128)));
        } else {
            x = uint(uint(uint(-129)));
       }
        if (!(uint(uint(uint(-130))) == uint(0xfffc)) && ((uint(uint(uint(uint(-130)))) >= uint(uint(-132))) && uint(uint(uint(uint(-132))))) {
            int __temp5 = uint(uint(-20927));
            x = uint(uint(uint(uint(-1324)))) * (uint(uint(uint(uint(-1302)))) * (uint(uint(uint(-1326)))) * (uint(uint(uint(-1305)))) * (uint(uint(uint(-1327)))) * (__temp5 >> uint(uint(-132))) * uint(uint(-1303)) * (uint(uint(uint(-1328)))) + 12
