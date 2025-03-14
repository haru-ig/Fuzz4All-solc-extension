pragma solidity ^0.8.0;
contract A {
    constructor() {}
    function add(uint _input1, uint _input2) public pure returns (uint result){
        result = _input1 + _input2;
    }
    function sub1(uint _input1) public pure returns (uint result){
        result = _input1 - 1;
    }
    function sub2(uint _input2) public pure returns (uint result){
        result = _input2 - 4;
        result -= 4;
    }
}



pragma solidity ^0.8.0;
contract FallbackFunction {
    function main() public pure {
        uint result = add(45,1);
        assert (result == 50);
    }
}
