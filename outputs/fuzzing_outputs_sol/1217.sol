pragma solidity ^0.8.0;
contract SemanticsEquivalence11 {
    struct Data { uint x1; uint x2; uint x3; }
    Data internal data1;
    function run() public {
        function() public payable {
            data1.x1 = memorySize();
            data1.x1 = data1.x1;
            data1.x3 = data1.x2;

            function() public {
                data1.x1 += data1.x1;
                address(0).call{value: 42}("");
            }();

            data1.x1 += memorySize();
            data1.x1 = data1.x1;

            uint[] memory numbers = new uint[](6);
            data1.x1 += memorySize();
            data1.x1 = data1.x1;
        }();
    }
    function memorySize() public pure returns (uint) {
        uint[] memory numbers = new uint[](6);
        numbers[5] = 0xFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FFFFFFF;
        return numbers.length;
    }
    receive() external payable {data1.x2 += memorySize();}
}
