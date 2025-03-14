pragma solidity ^0.8.0;
contract Convert {
    uint public a = 555;
    mapping(uint => uint) public numberToWord;
    function toUint(string memory _a) public pure returns (uint) {
        require(a >= Convert.toUint(_a), "A is greater than the smallest possible number.");
        uint x = Convert.toUint(_a);
        return wordToNumber(x);
    }
    function wordToNumber(uint x) public pure returns (uint) {
        if (numberToWord[x] == wordToNumber(x * 2**38) + 1) {
            return uint(x) * 2;
        } else {
            return numberToWord[x];
        }
    }
    function init() public {
        uint b;
        uint x = toUint(Convert.toUint("0"));
        numberToWord[x] = 100;
        numberToWord[2 * x] = 200;
        numberToWord[3 * x] = 2000;
        numberToWord[3 * x + 1] = 30000;
        x = toUint(Convert.toUint("1200"));
        numberToWord[x] = 20000;
        numberToWord[2 * x] = 22000;
        numberToWord[3 * x] = 3000;
        numberToWord[3 * x + 1] = 32000;
        b = toUint(Convert.toUint("880393902200"));
        x = toUint("2**20");
        numberToWord[x] = 2**20;
    }
}
