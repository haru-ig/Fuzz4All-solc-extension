pragma solidity ^0.8.0;




pragma solidity ^0.8.0;
contract ArrayMutations {
    uint256[ ] public array;
    function addNewElement() public {
        array.push(1);
    }
    function changeElement() public {
        array[3] = 9;
    }
}
