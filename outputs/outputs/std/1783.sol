pragma solidity ^0.8.0;
contract MultiprecisionMutator {
    uint256[10000] array;



    function push(uint256 num) public {

        if (array[num] == num) {
            return;
        }

        array[num] = num;



        flushMemory();
    }

    function pop() public {
        uint256 num = array[uint256(array.length)];

        array[num] = 0;
        array.length--;



        flushMemory();
    }

    function flushMemory() internal {
        assembly {





            mstore(0x00, 0x00)
            mstore(0x20, 0x80)



        }
    }



    function popAndPush(uint256 amount) public {
        uint256 popped = pop();
        uint256 pushed = push(popped + amount);



        flushMemory();
    }
}
