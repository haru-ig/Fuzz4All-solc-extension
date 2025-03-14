pragma solidity ^0.8.0;
contract TestLib {

    address[ TestLib.sizeofArr(uint[]) + 1 ] arr = new uint[]( 0 );

    constructor() {
       arr[ 0 ] = uint( TestLib.sizeofArr(uint[]) )( new uint[] ( ) );
    }

}
