pragma solidity ^0.8.0;
contract Math {

    function mod(uint x, uint y) public pure returns (uint result) {
        result = x % y;


    }
}
pragma solidity ^0.8.0;
contract ArrayExample {

    function getter() public view returns(uint[5] memory){
        uint[5] memory array;
        array = new uint[](5);
        array[0] = 10;
        array[1] = 20;
        array[2] = 30;
        array[3] = 40;
        array[4] = 50;
        return array;
    }
    function setter(uint[5] memory _array) public {
        uint[5] memory new_array = _array;
        for(uint i = 0; i < new_array.length; ++i) {
            new_array[i]++;
        }
    }
}
pragma solidity ^0.8.0;
contract ArrayExample {

    function getter() public view returns(uint[5] memory, uint[3] memory){
        uint[5] memory array1;
        uint[3] memory array2;
        array1 = new uint[](5);
        array1[0] = 20;
        array1[1] = 40;
        array1[2] = 60;
        array1[3] = 80;
        array1[4] = 100;
        array2 = new uint[](3);
        array2[0] = 5;
        array2[1] = 10;
        array2[2] = 15;
        return (
            array1,
            array2
        );
    }
    function setter(uint[5] memory _array) public {
        uint[3] memory new_array = _array;
        for(uint i = 0; i < new_array.length; ++i) {
            new_array[i]++;
        }
    }
}
