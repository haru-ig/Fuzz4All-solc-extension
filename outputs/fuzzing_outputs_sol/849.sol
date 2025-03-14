pragma solidity ^0.8.0;
contract Simple {
    function nonReturnFallback(uint256[] memory _arg) public {
        uint256[] memory array = new uint256[](_arg.length + 1);
        for (uint256 i = 1; i < _arg.length; i++) {


            array[i] = array[i][0];
        }

        assert(array[array.length - 1] == _arg[0]);


        nonReturnFallback(_arg);
    }
}
