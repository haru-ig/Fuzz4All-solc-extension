pragma solidity ^0.8.0;
contract AssignmentModulation_V2_Semantic_3 {
    uint public x;
    function doWork() public returns(uint){
        return x;
    }
    function modify(uint _x) public {
        x = _x;
     }
    function getAndRestore() public returns(uint) {
        return x;
     }
}

pragma solidity ^0.8.0;
contract AssignmentModulation_V2_Semantic_4 {
    uint[] public x;
    uint[] public y;
    constructor () public {
        x = new uint[](1);
        y = new uint[](1);
        x;
    }
    function doWork(uint[] memory) public returns(uint[] memory){
        return x;
    }
    function getAndClear() public returns(uint[] memory){
        return x;
    }
    function getAndRestore() public returns(uint[] memory) {
        return x;
     }
}

pragma solidity ^0.8.0;
contract AssignmentModulation_V2_Semantic_5 {
    uint[] public x;
    uint[] public y;
    function doWork(uint[] memory, uint[] memory) public returns(uint[] memory){
        return x;
    }
    function getAndClear() public returns(uint[] memory) {
        return x;
     }
    function getAndRestore() public returns(uint[] memory) {
        return x;
     }
}
contract AssignmentModulation_V2_Syntax_1 {
    uint[] public x;
    uint[] public y;
    uint[] public z;
    constructor () public {
        x = new uint[](1);
        y = new uint[](1);
        x[0] = 1;
    }
    function doWork() public returns(uint[] memory){
        return x;
     }
    function getAndClear() public returns(uint[] memory) {
        return x;
     }
    function getAndRestore() public returns(uint[] memory) {
        return x;
     }
}

pragma solidity ^0.8.0;
contract AssignmentModulation_V2_Syntax_2 {
    uint[] public x;
    uint[] public y;
    uint[] public z;
    address public a;
    constructor () public {
        x = new uint[](1);
        y = new uint
