pragma solidity ^0.8.0;
contract Semantic0005 {
    function equal() public pure {
        memory myArray;
        myArray[0] == myArray == memory,
    }
    function equal2() public pure {
        memory myArray;
        myArray[uint(10)][0] = myArray == memory;
    }
}

pragma solidity ^0.8.0;
contract Semantic0006 {
    function equal() public pure {
        uint256 a, b;
        (a, b) = (a, b);
        a == b;
    }
}
contract Semantic0007 {
    address _owner1;
    function semantic0007_1() public payable {
    }
    function semantic0007_2() public view {
        uint256 x;
        uint256 y;
    }
    function semantic0007_3() public pure {
        (, _, y) = (a, _, b);
        (, _, y) = (a, _, b);
    }
    function semantic0007_4() public pure {
        (x, a) = (0, a);
        (x, a) = (0, a);
    }
    function semantic0007_5() public pure {
        uint256 _a;
        (uint256 _x,) = (_a, x);
        (uint256 _a,) = (_a, x);
    }
    function semantic0007_6() public pure {
        memory memoryMemory;
        (uint256 _a, uint256 _b) = (404, 405);
        (uint256 _a, uint256 _b) = (404, 405);
    }
    function semantic0007_7() public pure {
        unchecked {
            (uint256 _a, uint256 _b) = (404, 405);
        }
    }
    function semantic0007_8() public pure {
        unchecked {
            (uint256 _a, uint256 _b) = (404, 405);
        }
        (uint256 _a, uint256 _b) = (404, 405);
    }
    function semantic0007_9() public pure {
        unchecked {
            (uint256 _value, uint256 _a) = (404,
