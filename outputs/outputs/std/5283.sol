pragma solidity ^0.8.0;
contract MyContract {
    function log2(uint n) internal pure returns (uint8) {
        require(n!= 0, "n is 0");
        n--;
        n = (n * 2147483648 + 1) >> 21;
        require(n > 0 && n <= 255 && n == (n >> 8), "n is invalid");
        return uint8(n);
    }
    function log2(uint n) internal pure returns (uint8) {
        require(n!= 0, "n is 0");
        n--;
        n = (n * 2147483648 + 1) >> 21;
        require(n > 0 && n <= 255 && n == (n >> 8), "n is invalid");
        return uint8(n);
    }
    function log2(uint n) internal pure returns (uint8) {
        require(n!= 0, "n is 0");
        n--;
        n = (n * 2147483648 + 1) >> 21;
        require(n > 0 && n <= 255 && n == (n >> 8), "n is invalid");
        return uint8(n);
    }
}
contract MyContract {
    function log2(uint8 n) public pure returns (uint) {
        require(n!= 0, "n is 0");
        n--;
        return uint(uint64(n) * uint64(2147483648));
    }
}
contract MyContract {
    function log2(uint8 n) public pure returns (uint) {
        require(n!= 0, "n is 0");
        n--;
        return uint(uint64(n) * uint64(2147483648));
    }
}
contract MyContract {
    mapping(uint => uint) balances;
    uint256[] numbers;
    uint[] numbersArr;
    uint8[] numbersU8;
    uint8[] numbersu8Arr;
    function balanceOf(uint index) public view returns (uint)
    {
        return balances[index];
    }
    function numbers(uint index) public view returns (uint) {
        return numbers[index];
    }
    function testFunction() public payable returns (uint256)
    {
        uint256 sum = 0;
        for (uint i = 0; i < numbers.length; i++) {
            uint a = balances[i];
            sum = sum + a;
            assert(sum == 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF);
        }
        return sum;
    }
    function testTwo() public constant returns(uint) {
        uint sum = 0;
        for (uint i = 0; i < numbers.length; i++) {
            sum += balances[i];
        }
        return sum;
    }
    function testFour(uint[] memory _numbers) public view returns (uint) {
        uint sum = 0;
        for (uint i = 0; i < _numbers.length; i++) {
            sum += balances[_numbers
