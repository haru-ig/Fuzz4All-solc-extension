pragma solidity ^0.8.0;
contract ArrayExample {
    uint[] public array;
    function test() public {

        uint256[] memory numbers = new uint256[](2);
        numbers[0] = 2;
        numbers[1] = 3;

        uint256 count = 2;
        while (count < 3) {
            uint256 j = numbers.length;
            numbers[j] = numbers[count];
            j += 1;
            numbers[count] = j;
            count += 1;
        }

        uint256 j = 2;
        while (j > 0) {
            uint256 k = numbers[j];
            uint256 n = 0;
            while (numbers[k] % j == 0) {
                n += 1;
                k /= j;
            }
            numbers[n] -= numbers[k];
            j -= 1;
        }

        while (n > 0) {
            uint256 j = numbers.length;
            numbers[n - 1] = numbers[j];
            j += 1;
            numbers[n] = j;
            j -= 1;
            n -= 1;
        }

        uint i = 0;
        uint j = 1;
        while (j < numbers.length - 1) {
            if (numbers[i] > numbers[j]) {
                uint tmp = numbers[i];
                numbers[i] = numbers[j];
                numbers[j] = tmp;
            }
            i += 1;
            j += 1;
        }
    }
}
