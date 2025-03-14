pragma solidity ^0.8.0;
contract Example9{
    function changeFunction(Example8 x, uint z) public pure {

        Example8 memory example = x;
        example.x = 2;
        uint addedResult = example.add(1, 1);
        x.x = 0;
        x.y = 1;
        require(addedResult == 3 && z!= 3);
    }
}
