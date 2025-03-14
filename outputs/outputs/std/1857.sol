pragma solidity ^0.8.0;
interface ArrayInterface {
    function length() external view returns (uint256);
    function item(uint256 idx)
        external
        view
        returns (contract C);
}

pragma solidity ^0.8.0;

pragma solidity ^0.8.0;
contract DecimalCalculator {
    AddInterface[4] addInterfaces;
    uint256[101] addIntegers;
    uint256[101] subtractIntegers;
    uint256[101] multiplyIntegers;
    uint256[101] divideIntegers;
    uint256[101] compareIntegers;
    uint256[101] maxInteger;

    uint256 maxDecimals;
    uint256 minDecimals;

    uint256 public sumIntegers;
    uint256 public maxSum;
    uint256 public minSum;
    uint256 public maxIndex;
    uint256 public minIndex;


    mapping(uint256=>uint256) map;

    constructor(AddInterface _addInterfaces, uint256[101] memory _addIntegers, uint256[101] memory _subtractIntegers, uint256[101] memory _multiplyIntegers, uint256[101] memory _divideIntegers, uint256[101] memory _compareIntegers, uint256 _maxInteger):
    addInterfaces(uint8(0),_addInterfaces,_addInterfaces,_addInterfaces,_addInterfaces,_compareIntegers)
    {
        for(uint256 i = 0; i < 101; i++) {
            addIntegers[i] = uint256(_addIntegers[i]);
            subtractIntegers[i] = uint256(_subtractIntegers[i]);
            multiplyIntegers[i] = uint256(_multiplyIntegers[i]);
            divideIntegers[i] = uint256(_divideIntegers[i]);
            map[i] = uint256(_compareIntegers[i]);
        }
        maxInteger = _maxInteger%AddInterface.GAS;
        maxDecimals = _maxInteger/AddInterface.GAS+1;
        minDecimals = uint256(maxDecimals*AddInterface.GAS);
        maxSum = 0;
        minSum = 0;
        for(uint256 i = 0; i < 101; i++) {
            uint256 minSum = 0;
            for(uint256 intI = 0; intI < i; intI++) {
                if(map[intI] > 0) {
                    uint256 value = uint256(addInterfaces.add(map[intI], map[i]));
                    if(value < minSum) {
                        minSum = value;
                        minIndex = intI;
