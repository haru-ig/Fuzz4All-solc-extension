pragma solidity ^0.8.0;
contract modifierB{
    function s(uint256 x) public pure{
        uint256 y = uint256(x);
        y++;
    }
}


contract MyContract{
    uint256[][1] private memory array;
}

contract c{
    function f() view public returns (uint256){
        function g() public pure {
            s(uint256(-4));
        }

        unchecked {
            while(uint256(-2)>257) {
                if(uint256(1)>1) break;
            }
        }
        if(uint256(0)>4) return uint256(-2);
        return g();
    }
}

contract d{
    function f() public view returns (uint256){
        uint256 l = 257;
        uint256 r = 258;
        if(257>=258){
            unchecked{
                uint256 u;
                uint256 v;
                u = uint256(l);
                v = uint256(r);
            }
            unchecked{
                uint256 t;
                uint256 n;
                t = uint256(l + 256);
                n = uint256(r - 1);
            }
        }
        if(l<0){
            return uint256(0);
        }
        return 0;
    }
}
