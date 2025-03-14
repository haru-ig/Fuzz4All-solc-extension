pragma solidity ^0.8.0;
contract MyMath {
    function sqr(uint64 a) public pure returns(uint64) {
        return (3 * a) * a;
    }
    function mul(uint64 a, uint64 b) public pure returns(uint64) {
        return (a * b);
    }
    function div(uint64 a, uint64 b) public pure returns(uint64) {
        return (a / b);
    }
}

pragma solidity ^0.8.0;
contract Array2{

    address[] public array;
    address[] public arr1;
    address[] public a1;
    uint256[] public arr2;

    function push() public {


        uint i = 0;

        array.push(a1, address(i));
    }


    function setArray(address[] memory _array) public {


        for(i = 0; i < a1.length; i++){
            array.push(address(a1[i]));
        }
    }
}


contract Array3{
    uint50[] public a, b;
    uint64[] arr2;
    uint[][][][] c;
    string[] d;


    uint a1 = 0;
    uint b1 = 0;




    function setA(uint[] memory _array) public {
        b = _array;
        a1 = sum(_array);
    }
    function setB(uint256[] memory _array) public {
        d = _array;
        b1 = sum(_array);
    }
    function setA2(uint256[][] memory _array) public {
        c = _array;
    }
    function setC2(uint256[][][][] memory _array) public {
        d = _array;
    }
    function sum(uint256[] memory _array) public pure returns (uint256) {
        uint256 n = 0;
        for (uint i = 0; i < _array.length; i++) {
            n = n + _array[i];
        }
        return (n);
    }
}
