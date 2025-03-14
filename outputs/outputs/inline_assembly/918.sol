pragma solidity ^0.8.0;
library Incrementer {
    function increment() internal pure returns(uint) {
        return 1;
    }
    function increment_using_incrementer() internal pure returns(uint){
        return Incrementer.increment();
    }
}
contract IncrementerCaller {
    function increment1_internal() internal pure returns(uint) {
        return 1;
    }
    function increment1() public pure returns(uint){
        return Incrementer.increment();
    }
    function increment1_internal2() internal returns(uint){
        return increment1_internal();
    }
    function increment2_internal2() internal pure returns(uint){
        return increment_internal();
    }
    function increment_using_incrementer() internal pure returns(uint){
        return Incrementer.increment();
    }
    function increment2() public pure returns(uint){
        return increment_internal();
    }
}
