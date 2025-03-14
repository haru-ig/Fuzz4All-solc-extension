pragma solidity ^0.8.0;
contract Mutate165 {
    mapping(uint256 => uint256) public nonexistent;
    mapping(uint256 => uint256) public numberArray;
    mapping (uint256 => uint256) public strArray;
    struct Point {
        uint16 x1;
        uint16 y1;
        uint16 x2;
        uint16 y2;
    }
    Point point;

    Mutate163 setToNonexistent() public {
        uint256 value = Mutate163.mutateFromFirst();
        nonexistent[value] = value;
    }
    Mutate164 setToNull() public {
        uint256 value = Mutate164.mutateFromFirst();
        point = Point({
            x1: value,
            x2: value,
            y1: 5,
            y2: 5
        });
    }
    Mutate173 setToMax() public {
        uint256 value = Mutate173.mutateFromFirst();
        strArray[value] = value;
    }
    Mutate183 setToRandomlyGenerated() public {
        uint256 _random1 = Random.uint256Random();
        numberArray[_random1] = _random1;
    }

    function getNonexistent() public view returns (uint256) {
        return nonexistent[Mutate163.mutateFromThird()];
    }
    function getNumberArray() public view returns (uint) {
        return numberArray[Mutate
