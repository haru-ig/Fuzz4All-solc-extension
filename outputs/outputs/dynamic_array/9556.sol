pragma solidity ^0.8.0;
contract Main5 {
    constructor () { blackboxArray[msg.sender][1825905824] = true;}
    function modifyBlackboxes (bool[] memory array, uint offset, uint num) public {
        for (uint i = 0; i < num; i++) {
            array[array.length - i - offset] =! array[array.length - i - offset];
        }
    }
}

pragma solidity ^0.8.0;
contract Main6 {
    mapping(uint => address[]) public blackboxArray;
    constructor () { blackboxArray[748724] = [address(0)];}
}
