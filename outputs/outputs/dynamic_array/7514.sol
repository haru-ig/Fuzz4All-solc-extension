pragma solidity ^0.8.0;
contract Test42_DynamicArray3 {
    function method() public {
        uint[] x = new uint[](4);
        uint[] memory y = x;
        x.push(0);
        x.pop();
        x[x.length++] = 0;
        x[2] = 0;
    }
}
