pragma solidity ^0.8.0;
contract SemanticCheckSemanticsImprovement {

    struct SimpleStruct1 {
        uint a;
        uint b;
    }
    struct SimpleStruct2 {
        uint[] arr1;
        uint[] arr2;
    }
    struct SimpleStruct3 {
        SimpleStruct1 s1;
        SimpleStruct2 s2;
    }
    struct SimpleStruct4 {
        uint s1;
        uint s2;
        uint s3;
        uint s4;
        uint s5;
    }

    uint[] internal arr;
    SimpleStruct1 internal s;
    SimpleStruct2 internal s2;
    SimpleStruct3 internal s3;
    SimpleStruct4 internal s4;





    uint x;

    function SemanticCheckSemanticsImprovement()
        public
    {
       x = 0;
    }




    function change(uint x_0)
        public
        pure
        returns(bool)
    {
        return (x == x_0);
    }




    function add(uint[] _arr, uint _n)
        public
        pure
        returns (uint[])
    {
        uint[] memory sres = new uint[](_n);
        for (uint i1; i1 < _n; i1++) sres[i1] = _arr[i1] + 1;

        return sres;
    }



    function changeArr(uint[] _arr)
        public
        pure
        returns (uint[])
    {
        uint[] memory sres;
        if (bool(s.a)) {
            sres = 1;
            sres[0] = 1;
            return sres;
        }

        uint[] memory res;

        bool b;
        res = _arr;
        sres = _arr;
        bool b1;
        for (uint i2; i2 < 2; i2++) {
            sres[res[i2] - 1] = res[res[i2] - 1]+ 1];
        }

        return sres;
    }




    function addArray2(uint[] _arr1, uint[] _arr2)
        public
        pure
        returns(uint[2])
    {
        return add(addArray(add(addArray(_arr1, _arr1), addArray(_arr1,_arr2)), addArray2(_arr2,_arr1)), 2);
    }



    function addArray2(uint _arr1, uint _arr2)
        public
        pure
        returns(uint)
    {
        return _arr1 + _arr2 + 2;
    }



    function addArray(uint[] _arr1, uint[] _arr2)
        public
        pure
        returns(uint[])
    {
        return add(_arr1,_arr2);
    }
