pragma solidity ^0.8.0;
contract Test46 { uint[] public dynArr;
     function setTest() public {
        dynArr.push(2);
    }
}

pragma solidity ^0.8.0;
contract Test47 {
    struct Foo { uint[32] arr; };
    function setTest(uint[] memory testArr) public {
        dynArr[0].arr[0] = 1;
        dynArr[0].arr[1] = 2;
        dynArr[0].arr[2] = 3;
    }
}
