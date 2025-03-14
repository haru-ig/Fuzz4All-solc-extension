pragma solidity ^0.8.0;
contract Array_sort{
    uint256[] public array;

    constructor(uint256 _a, uint256 _b, uint256 _c){
        array = [_a, _b, _c];
    }
    function sort(){
        array.sort();
    }

}

pragma solidity >=0.8.0 <0.9.0;
contract Array_array{
    Array_mutatons[] public a;
    function Array_array(){
        a = new Array_mutatons[](3);
        a[0].array2;
        a[0].array2();
        a[0].Mutate_array_from_array2(a);
        a[0].array;
        Array_sort a2(1, 3, 4);
        a2.sort();
        Array_array a3;
        Array_array.memory_array();
    }

    function memory_array(){
        Array_array b;
        Array_mutatons array2_var;
        a;
        a = new Array_mutatons[](3);
        a[0].array2;
        a[0].array2();
        a[0].Mutate_array_from_array2(a);
        a[0].array;
        b.a;
        b;
        a;
    }
}
