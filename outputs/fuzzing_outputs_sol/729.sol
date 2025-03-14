pragma solidity ^0.8.0;
contract StorageModifications {
    function setValue(uint x) public {
        storedData[0] = x;
        storedData[storedData.length-1] += 1;
        storedData.push(x);
        storedData[storedData.length-1] += 1;
        storedData.push(x+1);
        storedData.push(address(42));
    }
}
