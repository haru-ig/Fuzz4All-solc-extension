pragma solidity ^0.8.0;
contract ArrayMutations {
    uint256[] public array;

    function addNewElement() public {
        array.push(1);
    }

    function changeElement() public {
        array[3] = 9;
    }

    function moveElement() public {
        uint256 item = 42;
        array.push(item);
    }

    function removeElement() public {
        uint256 item = 42;
        array.push(item);

        array.pop();

    }

    function removeLastElement() public {
        array.push(1);
        array.pop();
    }
}
