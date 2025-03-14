pragma solidity ^0.8.0;
contract third{
    function f() internal pure {
        return ;
    }
    enum e{ e0,e1,e2}
    function __uint_u_32_to_e(uint8 a) public pure returns (e){
        return __uint_u_32_to_e_f(a);
    }
    function __uint_u_32_to_e_f(uint8 a) internal pure returns (e){
        switch (a){
            case 0:
                return e0;
            case 1:
                return e1;
            case 2:
                return e2;
        }
    }
}
