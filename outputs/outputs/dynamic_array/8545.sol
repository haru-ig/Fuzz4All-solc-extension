pragma solidity ^0.8.0;


contract SolidityBuggyArray {
    StructWithNestedArrays[] storage arr;

    contract W {
        StructWithNestedArrays[123] storage arr;
        constructor() {}
        function() external {}
        function callValue() public {
            arr[123] = StructWithNestedArrays(array1: [0,0,0], nestedInts: [88, 88]);
            console.log(arr[123].array1[0]);
        }
    }


    contract W2 {
        StructWithNestedArrays[] storage arr;
        constructor() {}
        function() external {}
        function callValue() public {
            uint256 len0;

            calldatacopy(asm(), 0, len0);
            len0;
            arr = arr.append(StructWithNestedArrays(array1: [10,10,10], nestedInts: [88, 88]));
            console.log(arr[0].array1[1]);
        }
    }


    contract W3 {
        StructWithNestedArrays storage arr;
        constructor() {}
        function() external {}
        function callValue() public {
            uint256 len;

            calldatacopy(asm(), 0, len);
            len;
            arr = arr.append(StructWithNestedArrays(array1: [10,10,10], nestedInts: [88, 88]));
            console.log(arr[0].array1[1]);
        }
    }


    contract W4 {
        StructWithNestedArrays storage arr;
        constructor() {}
        function() external {}
        function callValue() public {
            Structure memory s;

            calldatacopy(asm(), 0, len);
            len;
            s = Structure(array1: [10,10,10], nestedInts: [88, 88]);
            arr = arr.append(s);
            console.log(arr[0].array1[1]);
        }
    }



    contract W5 {
        function() external {}
        function callValue() public {
            uint256 len;
            /* solium-disable-next-line security/no-inline-assembly
