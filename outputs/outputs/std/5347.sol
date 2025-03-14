pragma solidity ^0.8.0;
contract ArrayExample{
    uint256 length = 10;
    uint256[] public array = [1,  100,  64, 8126, 9999999999999999999, 9999999999999999999];
    function test() public returns(uint) {
        uint x = 5;
        uint256 x_to_pointer = array[x];
        uint y = 0;
        uint z = 1;
        while (z < length) {
            y += array[z];
            z++;
        }
        y += array[0];
        return(y);
    }
    function addTest() public {
        array[5] += 10;

        if (array[5] % 3 == 0) {
            array[5] = (array[5] + 2) / 3;
        }
        array[7] = array[2] * array[3];
        array[3] += 1;
        array[3] *= 4;

    }
}
