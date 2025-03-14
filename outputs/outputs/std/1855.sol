pragma solidity ^0.8.0;

contract AddMutator {
    function addToTwo(uint256 n) external pure returns (uint256) {
        uint256 next = n + 2;
        require(next == n + 1, "The second calculation does not converge");
        uint256 halfwayDown = n + 1;
        while(true) {
            uint256 sum = next + halfwayDown;
            uint256 middle = n + 1;
            bool done = (sum == middle);
            halfwayDown += halfwayDown;
            next += next;
            require(done, "The middle calculation does not converge");
        }
    }
}


pragma solidity ^0.8.0;
interface ArrayInterface {
    function add(uint256 x, uint256 y) external view returns (uint256);
}


pragma solidity ^0.8.0;

contract ArraysMutatorExample {
    uint256[] randomArray;
    uint256[6] randomArray1;
    uint[] randomArray2;
    uint[5] randomArray3;
    uint256[3] randomArray4;
    uint256[7] randomArray5;
    uint256[1] randomArray6;

    address [6] arrayAddresses;
    uint32[2] arraySizes;

    bytes32 private  randomArrayData;
    bytes32 constant randomArrayData2 = "Random array";

    mapping(address => bool) allowed;

    AddInterface addContract;




    function MutateArraysExample(AddInterface _addContract) external {
        addContract = _addContract;
    }

    function setArray1(uint256[] memory _array) public {

        for (uint256 i = 0; i < _array.length; i++) {
            randomArray1[i] = _array[i];
        }

    }

    function getArray1() public view returns(uint256[] memory) {

        uint256[] memory newArray = new uint256[](6
