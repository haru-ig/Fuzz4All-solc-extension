pragma solidity ^0.8.0;
contract FallbackMutatedStorage6 {
    uint public num1;
    uint public num2;
    uint public num3;
    uint public num4;
    uint public num5;
    uint public num6;
    constructor() public {
    }
    function changeNumber1() public {
            num1 = 5;
    }
    function changeNumber2() public { num2 = 10; }
    function changeNumber3() public { num3 = 15; }
    function changeNumber4() public { num4 = 20; }
    function changeNumber5() public {
            num5 = 50;
    }
    function changeNumber6() public { num6 = 100; }
    function changeNumbersAll() public {
            num1 = 20;
            num2 = 25;
            num3 = 30;
            num4 = 35;
            num5 = 50;
            num6 = 100;
    }
    function getNumber() public view returns (uint) {
        return num1;
    }
    function getNumbers() public pure returns (uint) {
        return num2 | num3 | num4 | num5;
    }
}

pragma solidity ^0.8.0;
contract FallbackMutatedStorage7 {
    uint public num1;
    uint public num2;
    uint public num3;
    uint public num4;
    uint public num5;
    uint public num6;
    constructor() public {}
    function changeNumber1() public {
            num1 = 5;
    }
    function changeNumber2() public { num2 = 10; }
    function changeNumber3() public { num3 = 15; }
    function changeNumber4() public { num4 = 20; }
    function changeNumber5() public {
            num5 = 50;
    }
    function changeNumber6() public { num6 = 100; }
    function changeNumbersAll() public {
            num1 = 20;
            num2 = 25;
            num3 = 30;
            num4 = 35;
            num5 = 50;
            num6 = 100;
    }
    function getNumber() public view returns (uint) {
        return num1;
    }
    function getNumbers() public pure returns (uint) {
        return num2 | num3 | num4 | num5 | num6;
    }
}
