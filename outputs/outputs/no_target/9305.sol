pragma solidity ^0.8.0;
contract semanticallyEquiv4{

    function semanticallyEquiv4(address t1,address t2,uint16 i,uint16 j )
        public{ }

    function semanticallyEquiv4(address t1,address t2,uint16 i,uint16 j,uint8 k )
        public{ }
    function semanticallyEquiv13(address t1,address t2,address t3,uint i,uint256 j1,uint256 j2,address a3)
        public{ }
}

pragma solidity ^0.8.0;
contract semanticallyEquiv7{
    struct A{address b;}
    struct B{address a;}
    function semanticallyEquiv9(A[] a1) public{
        uint16 i1;
        uint256 j1;
        uint8 k1;

        (i1,j1,k1) = a1[0];
        B memory b1 = a1[1];
        B memory b2 = a1[2];


    }
    function semanticallyEquiv22(A[] a1,A[] a2) public{
        uint16 i1;
        uint256 j1;
        uint8 k1;
        uint16 i2;
        uint256 j2;
        uint8 k2;

        (i1,j1,k1) = a1[0];

        (i2,j2,k2) = a2[2];


    }
}
contract semanticallyEquiv0 {
    struct A{address b;}
    struct B{address a;}
    function semanticallyEquiv41 (A[] a1) public {
        uint16 i1;
        uint256 j1;
        uint8 k1;

        (i1,j1,k1) = a1[0];
        B memory b1 = a1[1];
    }
    function semanticallyEquiv71(A[] a1,A[] a2) public{
        uint16 i1;
        uint256 j1;
        uint8 k1;
        uint16 i2;
        uint256 j2;
        uint8 k2;

        (i1,j1,k1) = a1[0];
    }
}
