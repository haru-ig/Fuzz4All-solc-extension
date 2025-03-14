pragma solidity ^0.8.0;

contract inlineAssembly {







    function add_one(uint x) public pure returns (uint) {
        return x + 1;
    }

    function subtract_one(uint x) public pure returns (uint) {
        return x - 1;
    }

    function multiply_by2(uint x) public pure returns (uint) {




        return x * 2;
    }

    function divide_by_two(uint x) public pure returns (uint  ){
        return x/2;
    }

    function sum(uint x, uint y) public pure returns (uint) {
        return x + y;
    }

    function subtract(uint x, uint y) public pure returns (uint) {
        return x - y;
    }

    function divide_by0_except0(uint x) public pure returns (uint){
        return x/0;
    }

    function divide_by_one(uint x) public pure returns (uint  ) {
        return x / 1;
    }


}
