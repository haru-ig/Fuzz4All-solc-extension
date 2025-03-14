pragma solidity ^0.8.0;
contract Mutated {
    uint16[] pierre;
    uint16[] mutant;
    uint256[] mutant2;
    uint256[] mutant3;
    uint256[] mutant4;

    mapping(uint16 => bytes32) dataForFirstElement;
    mapping(uint16 => bytes32) dataForSecondElement;

    function mutated() public returns (uint256) {
        generate(1, 1);
        uint256 result = findResult();
        return result;
    }

    function generate(uint16 numberOfCalls, uint16 numberOfValues) public returns (uint256){
        require(numberOfCalls <= 2, 'Too many calls');
        for (uint256 i=1;i<=numberOfValues;i++){
            pierre.push(getRandom(0, 9));
        }
        uint256 value = calculateAverage();
        dataForFirstElement[0] = pierre[0];
        dataForSecondElement[0] = pierre[1];
        for (uint256 i = 2; i < numberOfValues; i++){
            value = calculateAverage();
            pierre[i] = pierre[i-1];
            pierre[i-1] = value;
            dataForFirstElement[i] = pierre[i];
            dataForSecondElement[i] = pierre[i-1];
        }
        uint256 result = calculateAverage();
        return result;
    }

    function getRandom(uint256 lowLimit, uint256 highLimit) private pure returns (uint256){
        uint256 lowInt = uint256(lowLimit);
        uint256 highInt = uint256(highLimit);
        return uint256(keccak256(abi.encodePacked(blockhash(lowInt), blockhash(highInt))));
    }
    function calculateAverage() private pure returns (uint256){
        return SafeMath.average(uint256[pierre.length]) - 1;
    }
    function findResult() public returns (uint256) {

        uint256 average = calculateAverage();


        uint256 index;
        for (uint256 i=0; i < pierre.length; i++){
            if (average <= pierre[i]) {index = i; break;}
        }


        return pierre[index];
