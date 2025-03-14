pragma solidity ^0.8.0;
contract Array_mutations{
    function set2(uint256 _a, uint256 _b, uint256 _c, uint256[] memory a) public view returns(uint256){
        a[0] = 2222;
        if(_c == 8){
            a = [222,111,3333,121,44,3343,"",5];
        }
        if(_c == 9){
            a[4] = x - 132;
            a[0] = 22;
            a[7] = 3;
            for(uint8 i = 0; i< 111; i++){
                a[i] = 133;
            }
        } else if(_c > 9){
            a[4] = x - 1321;
            a[0] = 11;
            a[7] = 82;
        }

        return 0;
    }
}
