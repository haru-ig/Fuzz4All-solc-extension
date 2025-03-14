pragma solidity ^0.8.0;
contract Test18_semanticsSame_8{
            uint8[5] public p;
        }

pragma solidity ^0.8.0;
contract Test18_semanticsSame_9{

    uint8 x;
    uint8 y;
    uint8 z;
    uint8[2] constant v = [0x00,0x00];
    uint8[] constant vv = [0x00,0x00];
    uint8 constant x = uint8(uint16(v));
    uint8 constant y = uint8(uint16(vv));
    uint8 constant z = uint8(uint16(v[0]));

    function Test18_semanticsSame_9(uint8[] memory array ) public
    {

        if(array.length == 0){
               x = 0;
               y = 0;
               z = 0;
        }
        if(array.length == 1){
            x = array[0];
            y = 0;
            z = 0;
        }
        if(array.length == 2){
         x = array[0];
                y = array[1];
        }
        if(array.length == 3){
            x = array[0];
            y = array[1];
         }
        if(array.length == 4){



            x = array[3];
            y = array[4];
         }

    }

}
