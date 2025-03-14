pragma solidity ^0.8.0;
contract Mutate_array4{}

pragma solidity ^0.8.0;
contract Revert_array4 {}

pragma solidity ^0.8.0;
contract Modability_test is Array_modified {
    constructor() {

        array4[1] = 42;
        arrayOf2 = array4;
        array4 = array4;

        arrayOf3 = uint256[3] {};
        map1(array2);

        uint256[] memory arrayOf1 = uint256[3] {};
        setArrayTo(arrayOf2);

        array1[0] = 11;
        map2();

        for(uint i = 0; i < 100; i++) array1.push(uint256(1));
        map2();

        setArrayTo(arrayOf3);
    }

    function reinitialize_arrays(uint256[] memory arrayOf1,uint256[] memory arrayOf2,uint256[] memory arrayOf3, uint256[] memory array4) public Mutate_array4(arrayOf1, arrayOf2, arrayOf3, array4){}
    function map1(uint256[] memory arrayOf2) public {
        arrayOf2 = arrayOf1;
        array4 = arrayOf2;
    }
    function map2() public {
        array4 = array3;
    }
    function setArrayTo(uint256[] memory arrayOf3) public Mutate_array4(arrayOf1, arrayOf2, arrayOf3, array4) { }
    function checkLength() public view returns(uint256 size) {
        size = arrayOf1.length;
    }
    function checkLength2(uint256[] memory arrayOf3) public view returns(uint256 size2) {
        size2 = array4.length;
    }
}
