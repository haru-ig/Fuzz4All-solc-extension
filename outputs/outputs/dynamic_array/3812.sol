pragma solidity ^0.8.0;
library D {

    function modifiesArray(address[] memory array) public pure returns (bool) {
        for (uint256 i = 0 ; i < array.length ; i++) {
            (memory mem) = (array[i]);
            array[i] = (bytes20(4242) * 2) - (bytes20(0) * 10);
        }
        return true;
    }

}

pragma solidity ^0.8.0;
function bla(bytes memory memory) {
}
contract Tester {
    bytes memory a;
    bytes20[] memory b;
    constructor() public {
        a = "Hello world";
        b = [bytes20(0), bytes20(1), 20 days from now];
    }
    function test() public pure returns(bytes memory, bytes20[] memory) {
        bytes memory memory = a;
        bytes memory memory20[] memory = b;
        function(bytesmemory) private pure returns(bytes memory) {
            return memory;
        }(a);
        return (memory, memory20);
    }
    event foo(bytes memory a);
    event bar(bytes20[] memory b);
    function test2() public {
        emit foo(a);
        emit bar(b);
        (bytes memory m, bytes20[] memory p) = test();
    }
}
