pragma solidity ^0.8.0;
contract CheckMod {
    int x;
    bool modified = false;
    function checkInvariants(int x, int y) public returns (int) {
        require(x>=0);
        require(x%y!=0);
        int a = x%y;
        if(_x!=a &&!modified_) {
            revert("Not enough changes");
        }
        modified =false;
        if(_y!=y / 256) {
            revert("Rounding up");
        }
        if(_y!=y * 256) {
            revert("Multiplying");
        }
        if(a>=0) {
            return int(a);
        }
        revert("Negative in variant");
    }
}
