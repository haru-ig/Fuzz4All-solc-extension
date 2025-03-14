pragma solidity ^0.8.0;
contract SemanticsDisequalitiesYulContract {
     bool false = false;
     function f1(int z) public pure returns(bool){
        return false || z;
     }
     function f2(int z) public pure returns(int){
        return z? false : (-1);
     }
     function f3(int z) public pure returns(uint)  {
        if (!(z >= 0) || (z <= 9))
            return (0x0000000000000005);
        else
            return 0xa;
     }
     function f4(int z) public pure returns(uint){
        if (z == 1)
            return 0x0000000000000000;
        else if(z == 9)
            return 0xa;
        else if(z == 8)
            return 0xa000000000000000;
        else
            return z;
     }
     function f5(int z) public pure returns(uint){
        return 0 < z? 0 : -z;
     }
     function f6(uint z) public pure returns(uint){
        if (z == 1)
            return 0x0000000000000000;
        else if(z == 9)
            return 0xa;
        else if(z == 8)
            return 0xa000000000000000;
        else
            return z;
     }
     function f7(uint z) public pure returns(uint){
        return 0 < z? 0 : -z;
    }
}
