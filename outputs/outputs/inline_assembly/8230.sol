pragma solidity ^0.8.0;
contract InlineAssembly{
    uint[] public numbers = [1,2,3];
    function test() public pure returns(uint[]){
        numbers[0] = 11;
        numbers[1] = 22;
        numbers[2] = 33;
        numbers[3] = 44;

        uint[] memory array = new uint[](numbers.length);
        assembly {
            array := numbers
        }

        return array;
    }
}
