pragma solidity ^0.8.0;
contract SemanticSolidityArrayAbiConversionTests6D {
    function test() public view{
        address[] memory array;
        array.length;
    }
    modifier test(uint _count, uint _offset) {
        for(uint i = 0; i < _count; i++){
            address[] memory localArray;
            localArray[_offset] = address(1);
        }
        return _;
    }
    function test04 (address[] memory array){
        array.length;
        test(array.length, 0);
    }
    function test05 (address[] memory array){
        for(uint i = 0; i < array.length; i++){
            uint local = array[i];
            for(uint j = 0; j < array.length; j++){
                if(array[j] == local) array[j] = address(0);
            }
        }
    }
}
