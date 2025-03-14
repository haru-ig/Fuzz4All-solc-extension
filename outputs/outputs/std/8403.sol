pragma solidity ^0.8.0;
contract ArrayMutationsAis6 {
    struct ArrayElement {
        uint index;
        uint value;
    }
    ArrayElement[] memory array;
    mapping (uint => ArrayElement) memory arrayMap;
    uint count;

    function getSum() public view returns (uint){
        uint sum = 0;
        for (uint i = 0; i < count; i++){
            sum += arrayMap[i].value;
        }
        return sum;
    }

    function addItem(uint index, uint value) public {
        arrayMap[index] = ArrayElement(index, value);
        array.push(ArrayElement(count, value));
        ++count;
    }
}
library ArrayMutations {
    using ArrayMutationsBis6Is6
    for ArrayMutationsBis6Is6;

    using ArrayMutationsAis6
    for ArrayMutationsAis6;

    struct Mutation {
        uint[] integers;
        uint[] floats;
        string strings;
        bytes bytes;
        bytes memory bytes2;
        string immutable bytes3;
        uint[3] unis;
        mapping (uint => ArrayElement) arrayMap;
        uint count;
    }
    function runMutationAndTest(uint randomNumber) public returns(Mutation memory){
        ArrayMutationsAis6.Mutation memory mutation;
        mutation.integers = new uint[](7);
        for (uint i = 0; i < 7; ++i){
            mutation.integers[i] = uint(i);
        }
        mutation.floats = new uint[](7);
        for (uint i = 0; i < 7; ++i){
            mutation.floats[i] = uint(i);
        }

        mutation.strings = "string";
        mutation.bytes = bytes("bytes");
        mutation.bytes2 = bytes2("bytes2");
        mutation.bytes3 = "bytes3";
        mutation.unis = new uint[](3);
        for (uint i = 0; i < 3; ++i){
            mutation.unis[i] = uint(i);
        }

        mutation.count = 0;

        ArrayMutationsBis6Is6.Mutation memory test = ArrayMutationsBis6Is6.runSum(mutation.integers);
        test = runMultiplication(test);
        test = runDivision(test);

        test = runMaxAndMin(test);
        test = runGetAndSet(test);
        test = runSetAndGetMapping(test);
        test = runSort(test);

        test = runFindMinAndDelete(test);

        return test;
    }

    function runMaximum(ArrayMutationsAis6.Mutation memory memory mutation) public returns(ArrayMutationsBis6Is6.Mutation memory){
        memory newArray = new ArrayMutationsBis6Is6.Mutation[](0);
        newArray.push(ArrayMutationsAis6.Mutation({
            integers : mutation.integers,
            floats : mutation.floats,
            strings : mutation.strings,
            bytes : mutation.
