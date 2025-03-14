pragma solidity ^0.8.0;







contract A {

    bool public isBool = true;
    bytes public bytes_bytes;

    bool public publicBool = true;
    bool internal internalBool = false;

    bytes32 public publicBytes32;
    address public publicAddress;

    address internal internalAddress;
    address public internalPublicAddress;

    uint public x;
    uint internal internalX;



    bytes32[] public publicBytes32Array;
    bytes32[] internal internalBytes32Array;

    uint public[] internal internalUintArray;
    uint public[] public internalPublicUintArray;

    uint internal internalUnsignedInt;

    uint[] public internal internalUintArray2D;
    uint public[2][2] public internalPublicUintArray2D;




    uint[3][3] internal internalUint3DArray2D;
    uint[3][3] public internal internalPublicUint3DArray2D;

    bytes public internalBytes32Array2D;
    bytes32 internal internalBytes32Array2D_internal;

    bytes32 internal internalBytes32Array2D_external;
    bytes32 external public externalBytes32Array2D;



    function internalFunction() internal returns (bytes32){
        return internalBytes32Array2D_internal;
    }


    function internalFunction2() internal returns (bytes32){
        internalBytes32Array2D_external = internalBytes32Array3D_external;
        return internalBytes32Array2D_external;
    }




    bytes32 public internalBytes32Array3D[2][2][3];


    struct internalPublicUint3DArray2DSub3D{
        uint internalUint3DArray2DSub1[3][3][2];
        uint internalUint3DArray
