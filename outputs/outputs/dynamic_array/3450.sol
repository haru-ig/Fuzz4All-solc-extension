pragma solidity ^0.8.0;
contract C2 {
    uint[] memory x;
    function copy(uint[][] memory dX) public {
        uint dX_1_0;
        uint[][] memory dX_1_2 = new uint[][][](1);
        for(;;){
            dX_1_2[0] = dX;
            dX_1_2[0][0] = dX_1_0;
            if((dX_1_2[0][0] < 5) && (dX_1_2[0][0] > 0)) break;
            dX_1_2[0][1] = 5;
            dX_1_0 = 64;
        }

        x[1] = 6;
    }
}
contract C2 {
    uint256 i;
    uint256 memory x;
    function copy(uint256[][] memory dX) public {
        uint256[][] memory dX_1_2;
        uint256 dX_1_0 = 5*2;
        i = 0;
        do
        {
            do
            {
                i++;
                dX_1_2[0] = dX;
                dX_1_2[0][1] = i;


            if(!(dX_1_2[0][1] == 0) && (dX_1_2[0][1] == 1)) break;

            } while(false);
        } while(true);
    }
}
